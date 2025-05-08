from typing import Optional, Union, Dict, List
from pathlib import Path

from ...util import options, log

from ...segtypes.common.data import CommonSegData

from subprocess import run

class N64SegLz77(CommonSegData):
    @staticmethod
    def parse_decomp_name(yaml: Union[Dict, List]) -> str:
        if isinstance(yaml, dict):
            return yaml["decomp_name"]
        else:
            if len(yaml) < 4:
                log.error(f"Error: {yaml} is missing decompressed name parameter")
            return yaml[3]
        

    def __init__(
            self,
            rom_start: Optional[int],
            rom_end: Optional[int],
            type: str,
            name: str,
            vram_start: Optional[int],
            args: list,
            yaml,
    ):
        super().__init__(
            rom_start,
            rom_end,
            type,
            name,
            vram_start,
            args=args,
            yaml=yaml,
        )

        self.decomp_name = self.parse_decomp_name(yaml)
    
    def decomp_path(self) -> Optional[Path]:
        return options.opts.asset_path / self.dir / f"{self.decomp_name}.bin"
    
    def out_path(self) -> Optional[Path]:
        return options.opts.asset_path / self.dir / f"{self.name}.bin"

    def split(self, rom_bytes):
        path = self.out_path()
        assert path is not None
        path.parent.mkdir(parents=True, exist_ok=True)

        decomp_path = self.decomp_path()
        assert decomp_path is not None
        decomp_path.parent.mkdir(parents=True, exist_ok=True)

        if self.rom_end is None:
            log.error(
                f"segment {self.name} needs to know where it ends; add a position marker [0xDEADBEEF] after it"
            )

        if self.size is None or self.size <= 0:
            log.error(f"Segment {self.name} has zero size.")
            
        with open(path, "wb") as g:
            assert isinstance(self.rom_start, int)
            assert isinstance(self.rom_end, int)
            g.write(rom_bytes[self.rom_start:self.rom_end])
        
        run(["make", "-C", "tools", "sharkwire-lz77", f"ARGS={str(path).replace('\\', '/')} {str(decomp_path).replace('\\', '/')} decompress"])
