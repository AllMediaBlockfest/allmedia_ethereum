contract Database {
    mapping (string => address) public database;

    function Database() {
    }

    function newAsset(string _isrc,
                      string _iswc,
                      string _ipi,
                      address _sacem) public {
        Asset _contract = new Asset(_isrc, _iswc, _ipi, _sacem);
        database[_isrc] = _contract;
    }
}

contract Asset {
    string public isrc;
    string public iswc;
    string public ipi;
    address public sacem;

    function Asset(string _isrc, string _iswc, string _ipi, address _sacem) {
        isrc = _isrc;
        iswc = _iswc;
        ipi = _ipi;
        sacem = _sacem;
    }
}
