contract Database {
    mapping (bytes16 => address) public database;

    function Database() {
    }

    function newAsset(bytes16 _isrc,
                      bytes16 _iswc,
                      bytes16 _ipi,
                      address _sacem) public {
        Asset _contract = new Asset(_isrc,
                                    _iswc,
                                    _ipi,
                                    _sacem);
        database[_isrc] = _contract;
    }
}

contract Asset {
    bytes16 public isrc;
    bytes16 public iswc;
    bytes16 public ipi;
    address public sacem;

    function Asset(bytes16 _isrc,
                   bytes16 _iswc,
                   bytes16 _ipi,
                   address _sacem) {
        isrc = _isrc;
        iswc = _iswc;
        ipi = _ipi;
        sacem = _sacem;
    }
}
