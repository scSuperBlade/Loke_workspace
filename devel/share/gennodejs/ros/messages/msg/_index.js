
"use strict";

let EnemyDirectionFeedback = require('./EnemyDirectionFeedback.js');
let caissonDetectionAction = require('./caissonDetectionAction.js');
let LocalPlannerFeedback = require('./LocalPlannerFeedback.js');
let LocalPlannerAction = require('./LocalPlannerAction.js');
let LocalPlannerActionGoal = require('./LocalPlannerActionGoal.js');
let EnemyDirectionActionFeedback = require('./EnemyDirectionActionFeedback.js');
let LocalPlannerActionResult = require('./LocalPlannerActionResult.js');
let BotGoalActionFeedback = require('./BotGoalActionFeedback.js');
let LocalPlannerGoal = require('./LocalPlannerGoal.js');
let BotGoalAction = require('./BotGoalAction.js');
let GlobalPlannerActionGoal = require('./GlobalPlannerActionGoal.js');
let exampleGoal = require('./exampleGoal.js');
let ArmorDetectionActionGoal = require('./ArmorDetectionActionGoal.js');
let GlobalPlannerActionFeedback = require('./GlobalPlannerActionFeedback.js');
let LocalPlannerActionFeedback = require('./LocalPlannerActionFeedback.js');
let exampleFeedback = require('./exampleFeedback.js');
let caissonDetectionFeedback = require('./caissonDetectionFeedback.js');
let ArmorDetectionAction = require('./ArmorDetectionAction.js');
let exampleActionGoal = require('./exampleActionGoal.js');
let LocalizationActionGoal = require('./LocalizationActionGoal.js');
let EnemyDirectionActionGoal = require('./EnemyDirectionActionGoal.js');
let ArmorDetectionActionFeedback = require('./ArmorDetectionActionFeedback.js');
let exampleAction = require('./exampleAction.js');
let LocalizationActionResult = require('./LocalizationActionResult.js');
let BotGoalGoal = require('./BotGoalGoal.js');
let ArmorDetectionActionResult = require('./ArmorDetectionActionResult.js');
let caissonDetectionResult = require('./caissonDetectionResult.js');
let LocalizationFeedback = require('./LocalizationFeedback.js');
let caissonDetectionGoal = require('./caissonDetectionGoal.js');
let LocalizationAction = require('./LocalizationAction.js');
let BotGoalFeedback = require('./BotGoalFeedback.js');
let LocalizationGoal = require('./LocalizationGoal.js');
let ArmorDetectionGoal = require('./ArmorDetectionGoal.js');
let caissonDetectionActionFeedback = require('./caissonDetectionActionFeedback.js');
let EnemyDirectionActionResult = require('./EnemyDirectionActionResult.js');
let ArmorDetectionResult = require('./ArmorDetectionResult.js');
let EnemyDirectionAction = require('./EnemyDirectionAction.js');
let exampleResult = require('./exampleResult.js');
let GlobalPlannerFeedback = require('./GlobalPlannerFeedback.js');
let GlobalPlannerResult = require('./GlobalPlannerResult.js');
let BotGoalResult = require('./BotGoalResult.js');
let BotGoalActionResult = require('./BotGoalActionResult.js');
let LocalizationResult = require('./LocalizationResult.js');
let ArmorDetectionFeedback = require('./ArmorDetectionFeedback.js');
let EnemyDirectionResult = require('./EnemyDirectionResult.js');
let GlobalPlannerActionResult = require('./GlobalPlannerActionResult.js');
let caissonDetectionActionGoal = require('./caissonDetectionActionGoal.js');
let BotGoalActionGoal = require('./BotGoalActionGoal.js');
let exampleActionResult = require('./exampleActionResult.js');
let GlobalPlannerAction = require('./GlobalPlannerAction.js');
let LocalPlannerResult = require('./LocalPlannerResult.js');
let LocalizationActionFeedback = require('./LocalizationActionFeedback.js');
let GlobalPlannerGoal = require('./GlobalPlannerGoal.js');
let exampleActionFeedback = require('./exampleActionFeedback.js');
let caissonDetectionActionResult = require('./caissonDetectionActionResult.js');
let EnemyDirectionGoal = require('./EnemyDirectionGoal.js');
let GridCells = require('./GridCells.js');
let Odometry = require('./Odometry.js');
let ShootState = require('./ShootState.js');
let OccupancyGrid = require('./OccupancyGrid.js');
let GameInfo = require('./GameInfo.js');
let GameBuffInfo = require('./GameBuffInfo.js');
let EnemyPos = require('./EnemyPos.js');
let RobotHurtData = require('./RobotHurtData.js');
let GimbalAngle = require('./GimbalAngle.js');
let GoalTask = require('./GoalTask.js');
let ShootInfo = require('./ShootInfo.js');
let RfidInfo = require('./RfidInfo.js');
let Path = require('./Path.js');
let ObstacleMsg = require('./ObstacleMsg.js');
let MapMetaData = require('./MapMetaData.js');

module.exports = {
  EnemyDirectionFeedback: EnemyDirectionFeedback,
  caissonDetectionAction: caissonDetectionAction,
  LocalPlannerFeedback: LocalPlannerFeedback,
  LocalPlannerAction: LocalPlannerAction,
  LocalPlannerActionGoal: LocalPlannerActionGoal,
  EnemyDirectionActionFeedback: EnemyDirectionActionFeedback,
  LocalPlannerActionResult: LocalPlannerActionResult,
  BotGoalActionFeedback: BotGoalActionFeedback,
  LocalPlannerGoal: LocalPlannerGoal,
  BotGoalAction: BotGoalAction,
  GlobalPlannerActionGoal: GlobalPlannerActionGoal,
  exampleGoal: exampleGoal,
  ArmorDetectionActionGoal: ArmorDetectionActionGoal,
  GlobalPlannerActionFeedback: GlobalPlannerActionFeedback,
  LocalPlannerActionFeedback: LocalPlannerActionFeedback,
  exampleFeedback: exampleFeedback,
  caissonDetectionFeedback: caissonDetectionFeedback,
  ArmorDetectionAction: ArmorDetectionAction,
  exampleActionGoal: exampleActionGoal,
  LocalizationActionGoal: LocalizationActionGoal,
  EnemyDirectionActionGoal: EnemyDirectionActionGoal,
  ArmorDetectionActionFeedback: ArmorDetectionActionFeedback,
  exampleAction: exampleAction,
  LocalizationActionResult: LocalizationActionResult,
  BotGoalGoal: BotGoalGoal,
  ArmorDetectionActionResult: ArmorDetectionActionResult,
  caissonDetectionResult: caissonDetectionResult,
  LocalizationFeedback: LocalizationFeedback,
  caissonDetectionGoal: caissonDetectionGoal,
  LocalizationAction: LocalizationAction,
  BotGoalFeedback: BotGoalFeedback,
  LocalizationGoal: LocalizationGoal,
  ArmorDetectionGoal: ArmorDetectionGoal,
  caissonDetectionActionFeedback: caissonDetectionActionFeedback,
  EnemyDirectionActionResult: EnemyDirectionActionResult,
  ArmorDetectionResult: ArmorDetectionResult,
  EnemyDirectionAction: EnemyDirectionAction,
  exampleResult: exampleResult,
  GlobalPlannerFeedback: GlobalPlannerFeedback,
  GlobalPlannerResult: GlobalPlannerResult,
  BotGoalResult: BotGoalResult,
  BotGoalActionResult: BotGoalActionResult,
  LocalizationResult: LocalizationResult,
  ArmorDetectionFeedback: ArmorDetectionFeedback,
  EnemyDirectionResult: EnemyDirectionResult,
  GlobalPlannerActionResult: GlobalPlannerActionResult,
  caissonDetectionActionGoal: caissonDetectionActionGoal,
  BotGoalActionGoal: BotGoalActionGoal,
  exampleActionResult: exampleActionResult,
  GlobalPlannerAction: GlobalPlannerAction,
  LocalPlannerResult: LocalPlannerResult,
  LocalizationActionFeedback: LocalizationActionFeedback,
  GlobalPlannerGoal: GlobalPlannerGoal,
  exampleActionFeedback: exampleActionFeedback,
  caissonDetectionActionResult: caissonDetectionActionResult,
  EnemyDirectionGoal: EnemyDirectionGoal,
  GridCells: GridCells,
  Odometry: Odometry,
  ShootState: ShootState,
  OccupancyGrid: OccupancyGrid,
  GameInfo: GameInfo,
  GameBuffInfo: GameBuffInfo,
  EnemyPos: EnemyPos,
  RobotHurtData: RobotHurtData,
  GimbalAngle: GimbalAngle,
  GoalTask: GoalTask,
  ShootInfo: ShootInfo,
  RfidInfo: RfidInfo,
  Path: Path,
  ObstacleMsg: ObstacleMsg,
  MapMetaData: MapMetaData,
};
