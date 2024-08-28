{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "Entity_Enemy_ShrineOfEarth_10_Keese_01",
  "spriteId": {
    "name": "Sprite_Enemy_Keese",
    "path": "sprites/Sprite_Enemy_Keese/Sprite_Enemy_Keese.yy",
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
    "name": "Entity_Parent_Enemy_Keese",
    "path": "objects/Entity_Parent_Enemy_Keese/Entity_Parent_Enemy_Keese.yy",
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
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"CurrentPath","varType":4,"value":"-1","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"StartDelayMin","varType":0,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"StartDelayMax","varType":0,"value":"512","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [
    {"resourceType":"GMOverriddenProperty","resourceVersion":"1.0","name":"","propertyId":{"name":"ContinueDelayMax","path":"objects/Entity_Parent_Enemy_Keese/Entity_Parent_Enemy_Keese.yy",},"objectId":{"name":"Entity_Parent_Enemy_Keese","path":"objects/Entity_Parent_Enemy_Keese/Entity_Parent_Enemy_Keese.yy",},"value":"0",},
  ],
  "parent": {
    "name": "Keese",
    "path": "folders/Objects/Entities/Enemies/Keese.yy",
  },
}