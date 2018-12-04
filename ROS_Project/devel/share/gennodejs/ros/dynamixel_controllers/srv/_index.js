
"use strict";

let SetCompliancePunch = require('./SetCompliancePunch.js')
let SetComplianceMargin = require('./SetComplianceMargin.js')
let TorqueEnable = require('./TorqueEnable.js')
let StopController = require('./StopController.js')
let RestartController = require('./RestartController.js')
let SetComplianceSlope = require('./SetComplianceSlope.js')
let StartController = require('./StartController.js')
let SetSpeed = require('./SetSpeed.js')
let SetTorqueLimit = require('./SetTorqueLimit.js')

module.exports = {
  SetCompliancePunch: SetCompliancePunch,
  SetComplianceMargin: SetComplianceMargin,
  TorqueEnable: TorqueEnable,
  StopController: StopController,
  RestartController: RestartController,
  SetComplianceSlope: SetComplianceSlope,
  StartController: StartController,
  SetSpeed: SetSpeed,
  SetTorqueLimit: SetTorqueLimit,
};
