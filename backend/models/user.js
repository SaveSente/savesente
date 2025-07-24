import { DataTypes } from "sequelize";
import sequelize from "../config/database.js";
import wallets from "./wallets.js";
import transactions from "./transactions.js";

const user = sequelize.define('user', {
  id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  firstName: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  lastName: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  email: {
    type: DataTypes.STRING,
    allowNull: false,
    unique: true,
    validate: {
      isEmail: true,
    }
  },
  phone: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  countryCode: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  bitnob_customer_id: {
    type: DataTypes.STRING,
    allowNull: true,
  },
   createdAt: {
    allowNull: false,
    type: DataTypes.DATE
  },
  updatedAt: {
    allowNull: false,
    type: DataTypes.DATE
  },
}, {
  modelName: 'user',
  tableName: 'user',
  timestamps: true,
  freezeTableName: true,
});

user.hasMany(wallets, { foreignKey: 'user_id' });
wallets.belongsTo(user, { foreignKey: 'user_id' });

user.hasMany(transactions, { foreignKey: 'user_id' });
transactions.belongsTo(user, { foreignKey: 'user_id' });

export default user;