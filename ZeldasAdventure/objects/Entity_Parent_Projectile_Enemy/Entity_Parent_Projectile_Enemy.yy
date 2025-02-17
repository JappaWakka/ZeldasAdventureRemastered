{
  "resourceType": "GMObject",
  "resourceVersion": "1.0",
  "name": "Entity_Parent_Projectile_Enemy",
  "spriteId": null,
  "solid": false,
  "visible": true,
  "managed": true,
  "spriteMaskId": null,
  "persistent": false,
  "parentObjectId": null,
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
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":3,"collisionObjectId":null,},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":4,"collisionObjectId":{"name":"Parent_Solid","path":"objects/Parent_Solid/Parent_Solid.yy",},},
    {"resourceType":"GMEvent","resourceVersion":"1.0","name":"","isDnD":false,"eventNum":0,"eventType":0,"collisionObjectId":null,},
  ],
  "properties": [
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"Power","varType":1,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"ProjectileSpeed","varType":4,"value":"0","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"Item 0\"",
      ],"multiselect":false,"filters":[],},
    {"resourceType":"GMObjectProperty","resourceVersion":"1.0","name":"ProjectileDirection","varType":6,"value":"\"Straight\"","rangeEnabled":false,"rangeMin":0.0,"rangeMax":10.0,"listItems":[
        "\"Straight\"",
        "\"TowardsPlayer\"",
      ],"multiselect":false,"filters":[],},
  ],
  "overriddenProperties": [],
  "parent": {
    "name": "Projectiles_Enemy",
    "path": "folders/Objects/Entities/Projectiles_Enemy.yy",
  },
}