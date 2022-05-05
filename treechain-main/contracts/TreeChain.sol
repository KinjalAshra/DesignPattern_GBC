// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

contract TreeChain {

    uint randTreeId;
    TreeChainToken instance = new TreeChainToken();

    struct TreeChainData {
        uint treeId;
        string treeType;
        int latitude;
        int longitude;
        string location;
        string treeState;
        uint256 timestamp;
    }

    struct TreeChainDataUpdate {
        uint treeId;
        string treeState;
        uint256 timestamp;
    }
    mapping(address => TreeChainData) treeData;
    mapping(uint => TreeChainDataUpdate) treechainUpdateMapping;

    event TreeChainDataEvent(uint treeId, string location, string treeState, uint256 timestamp);
    event TreeChainDataUpdateEvent(uint treeId, string treeState, uint256 timestamp);

    // Helper function
    function randomID() private returns(uint){
        return uint(keccak256(abi.encodePacked(
            randTreeId++, 
            block.difficulty, 
            msg.sender
    )));
    }

    function enterTreeData(
        string memory _treeType, int _latitude, int _longitude, string memory _location,
        string memory _treeState) public {
        TreeChainData memory treeChainDataStruct = TreeChainData(
            randomID(), _treeType, _latitude, _longitude, _location, _treeState, block.timestamp);
        treeData[msg.sender] = treeChainDataStruct;
        emit TreeChainDataEvent(randomID(), _location, _treeState, block.timestamp);
        // Add issuance of 1 token out here
        // We will add a function to credit the user from the front end. 
    }

    function updateTreeData(uint _treeId, string memory _treeState) public {
        TreeChainDataUpdate memory _treechainDataUpdate= TreeChainDataUpdate(_treeId, _treeState, block.timestamp);
        emit TreeChainDataUpdateEvent(_treeId, _treeState, block.timestamp);
        treechainUpdateMapping[_treeId] = _treechainDataUpdate;
        // Add issuance of .5 token here
        // We will add a function to credit the user from the front end. 
    }

    function getTreeUpdateData(uint _treeId) public view returns(string memory _treeState_, uint256 _timeStamp) {
        _treeState_ = treechainUpdateMapping[_treeId].treeState;
        _timeStamp = treechainUpdateMapping[_treeId].timestamp;
        return (_treeState_, _timeStamp);
    }

    function getTreeDataByTreeCustodian(address _address) public view returns(
        uint _treeId_, string memory _treeType_, int _latitude_, int _longitude_, string memory _location_, 
        string memory _treeState_, uint256 _timestamp_) {
        _treeId_ = treeData[_address].treeId;
        _treeType_= treeData[_address].treeType;
        _latitude_= treeData[_address].latitude;
        _longitude_ = treeData[_address].longitude;
        _location_ = treeData[_address].location;
        _treeState_ = treeData[_address].treeState;
        _timestamp_ = treeData[_address].timestamp;
        return (_treeId_, _treeType_, _latitude_, _longitude_, _location_, _treeState_, _timestamp_);
    }   
}