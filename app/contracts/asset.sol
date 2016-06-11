contract Asset {
    bytes16 public isrc;
    bytes16 public iswc;
    bytes16 public ipi;
    address public sacem;

    function Asset(bytes16 _isrc, bytes16 _iswc, bytes16 _ipi, address _sacem) {
        isrc = _isrc;
        iswc = _iswc;
        ipi = _ipi;
        sacem = _sacem;
    }
}
