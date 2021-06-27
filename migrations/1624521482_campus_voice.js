var CampusVoice = artifacts.require("./CampusVoice");

module.exports = function(_deployer) {
  // Use deployer to state migration tasks.
  _deployer.deploy(CampusVoice);
};
