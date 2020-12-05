const StorageFactory = artifacts.require('StorageFactory');
const Storage = artifacts.require("Storage");

module.exports = async function(_deployer) {
  // Use deployer to state migration tasks.
  const storage = await Storage.deployed();
  _deployer.deploy(StorageFactory, storage.address);
};
