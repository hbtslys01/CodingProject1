
"use strict";

let LocateBall = require('./LocateBall.js')
let ClosestPointPath = require('./ClosestPointPath.js')
let SetPosition = require('./SetPosition.js')
let InterpolatePath = require('./InterpolatePath.js')
let CommandRobot = require('./CommandRobot.js')
let GetTransitions = require('./GetTransitions.js')
let ModelSenseAction = require('./ModelSenseAction.js')
let FollowPath = require('./FollowPath.js')
let GetPosition = require('./GetPosition.js')
let ChooseAction = require('./ChooseAction.js')
let ComputeEntropy = require('./ComputeEntropy.js')
let DetectMetal = require('./DetectMetal.js')
let SenseBall = require('./SenseBall.js')

module.exports = {
  LocateBall: LocateBall,
  ClosestPointPath: ClosestPointPath,
  SetPosition: SetPosition,
  InterpolatePath: InterpolatePath,
  CommandRobot: CommandRobot,
  GetTransitions: GetTransitions,
  ModelSenseAction: ModelSenseAction,
  FollowPath: FollowPath,
  GetPosition: GetPosition,
  ChooseAction: ChooseAction,
  ComputeEntropy: ComputeEntropy,
  DetectMetal: DetectMetal,
  SenseBall: SenseBall,
};
