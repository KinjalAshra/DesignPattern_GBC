# TreeChain Project

This project is to provide a way for government and private donors to track their funds with the use of the smart contract. This also provides incentives to tree custodians through the issuance of TreeChain Tokens (TCT).

Building on the group project 'TreeChain' undertaken in class BCDV 1001, the group noted that similar functionality existed between the Vehicle License Plate registration and that of one of the key smart contracts needed for the TreeChain project. We used this opportunity to undertake further development of the (TCT) token.    

# Getting Started

## This documentation includes the following

    * Requirements Document

    * Architecture

    * Project Plan

    * Smart Contract

## Requirements Document

- ## Problem statement:

Forestation Initiatives have failed due to inefficiencies, claims of corruption, or the inability to demonstrate how funds were allocated. Previous attempts have not tracked results or audited spending.
- ## Goals

  - The Goal is for TreeChain to provide accountability to donors allowing them to track reforestation efforts.

  - Provide real-time tracking and incentives for forest protection.

  - Utilizing smart contracts, IoT devices, and the blockchain to provide verifiable accountability.

 ![Smart contracts overview](./assets/images/smartcontractoverview.png?raw=true "Smart contracts overview")

- ## Stakeholders

  - ### _Private donors (individuals)_

    Private donors are generally an individuals who are willing to donate to our cause. Private donors need reassurance that their donations are being used correctly and blockchain allows donors exactly how and where their donations are being used.

  - ### _Tree Custodians_

    Tree custodians are local people who are incentivized to plant and provide on-going tree husbandry. They are rewarded via tokens to generate income. A tree custodian can be allocated to a tree or take care of multiple.

  - ### _Suppliers_

    There are two main suppliers. The supplier of the tree sapling and IoT device. The blockchain monitors these inputs so each shipment can be timed, coordinated, and logged.

  - ### _Delivery Agents_

    There are multiple delivery agents like Ghana post or international providers such as FedEx, the blockchain scans the IoT device as it leaves the supplier. Upon delivery, the tree custodian registers receipt, with their mobile device.

  - ### _Restrictions/rules_

  - ### _Data_

  - ### _Exceptions_

  - ### _User stories_

    Replace with a graphical representation of the user stories

# Architecture

- ## Project description

This project is to provide a way for government and private donors to track their funds with the use of the smart contract. This also provide incentives to tree custodians through the issuance of TreeChain Tokens (TCT).

- ## Top level description

TreeChain is a startup company offering a blockchain-based solution that allows donors to invest in the re-forestation of designated geographic areas where the local population is incentivized to plant, maintain and participate in forest restoration.

- ## Data / Fields

```
[ treeId, treeType, Latitude and Longitude, Timestamp, Location, treeState, TreeCustodiansWalletAddress ]
```

- ## Functions - inputs/outputs

  createTreeData()

  updateTreeState()

  modifiers()

  events()

- ## Diagram (flow, system)

  Replace with section with Flow diagram

- ## Tech stack

  Blockchain

  Smart contract (Solidity)

# Project Plan

- ## Breakdown of tasks

  - ### Documentation:

    Problem and solution statement documentation.

  - ### Graphical representation:

    User stories diagram:

    ![Treechain diagram](./assets/images/Treechain-user-stories-diagram.png?raw=true "Treechain user stories diagram")

    Solution architecture diagram:

    ![Treechain diagram](./assets/images/Treechain-Solution-architecture-diagram.png?raw=true "Treechain user stories diagram")


  - ### Smart contract development:

    Tokenization contract

    Data tracking contract

- ## Time estimate per task

```
| Tasks                         | Timeline          |
| :---------------------------- | :---------------- |
| Documentation                 |  4 hours          |
| Graphical representation      |  1 day            |
| Smart contract development    |  5 days           |
```

- ## Tasks assigned to Team members

```

| Tasks                             | Assignee         |
| :----------------------------     |:---------------- |
| Problem & solution documentation  |  Nathan           |
| Diagram representation:           |  Amandeepkaur    |
| Smart Contract Development        |  Kinjal & Ken    |
```

- ## Dependencies:

  [Open zeppeline](https://github.com/OpenZeppelin/openzeppelin-contracts) library

- ## Length of time to complete

  The timeline for the entire project is 6days 15hrs

- ## Gantt chart 
![Treechain chart](./assets/images/Treechain-gantt-chart.png?raw=true "Treechain gantt chart")

# Smart Contract

- [TreeChain.sol]() file under the contracts folder in the repo.

- [TreeChainToken.sol]() file under the contracts folder in the repo.
