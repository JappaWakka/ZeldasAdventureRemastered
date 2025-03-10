{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "Entity_Enemy_Boss_Llort1",
  "spriteId": {
    "name": "Sprite_Enemy_Boss_Llort_Move",
    "path": "sprites/Sprite_Enemy_Boss_Llort_Move/Sprite_Enemy_Boss_Llort_Move.yy",
  },
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": {
    "name": "Enemy_Collision_Solid",
    "path": "sprites/Enemy_Collision_Solid/Enemy_Collision_Solid.yy",
  },
  "persistent": false,
  "parentObjectId": {
    "name": "Entity_Parent_Enemy",
    "path": "objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",
  },
  "physicsObject": false,
  "physicsSensor": false,
  "physicsShape": 1,
  "physicsGroup": 1,
  "physicsDensity": 0.5,
  "physicsRestitution": 0.1,
  "physicsLinearDamping": 0.1,
  "physicsAngularDamping": 0.1,
  "physicsFriction": 0.2,
  "physicsStartAwake": true,
  "physicsKinematic": false,
  "physicsShapePoints": [],
  "eventList": [
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":1,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":8,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"CurrentPattern","varType":4,"value":"-1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"MoveToGoal","varType":4,"value":"[-1,-1]","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"MoveSpeed","varType":4,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"StepIndex","varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"CanContinue","varType":3,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"IsInvincible","varType":3,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"Delay","varType":0,"value":"-1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"DeathAnimationCounter","varType":0,"value":"-1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"StartDeathAnimation","varType":3,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"HitPoints","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"objectId":{"name":"Entity_Parent_Enemy","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"value":"60",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"Power","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"objectId":{"name":"Entity_Parent_Enemy","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"value":"50",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"MoveToPlayerChance","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"objectId":{"name":"Entity_Parent_Enemy","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"value":"0",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"EnemySoundName","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"objectId":{"name":"Entity_Parent_Enemy","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"value":"SFX_Enemy_Llort",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"Defense","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"objectId":{"name":"Entity_Parent_Enemy","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"value":"24",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"HitRadius_Defense","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"objectId":{"name":"Entity_Parent_Enemy","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"value":"32",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"HitRadius_Attack","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"objectId":{"name":"Entity_Parent_Enemy","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"value":"20",},
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"KnockbackDistance","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"objectId":{"name":"Entity_Parent_Enemy","path":"objects/Entity_Parent_Enemy/Entity_Parent_Enemy.yy",},"value":"global.KnockbackDistances.None",},
  ],
  "parent": {
    "name": "Enemies",
    "path": "folders/Objects/Entities/Enemies.yy",
  },
}