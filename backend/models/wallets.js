import { DataTypes } from "sequelize";
import sequelize from "../config/database.js";
import transactions from "./transactions.js";


const wallets = sequelize.define('wallets', {
  id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  user_id: {
    type: DataTypes.UUID,
    allowNull: false,
    references: {
      model: 'user',
      key: 'id',
    }
  },
  name: {
    type: DataTypes.STRING,
    allowNull: false
  },
  bitnob_wallet_id: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  withdrawal_date: {
    type: DataTypes.DATE,
    allowNull: true
  },
  balance: {
    type: DataTypes.DECIMAL(18, 8),
    defaultValue: 0.0,
  },
  status: {
    type: DataTypes.ENUM('active', 'locked', 'withdrawn'),
    defaultValue: 'active',
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
  modelName: 'wallets',
  tableName: 'wallets',
  timestamps: true,
  freezeTableName: true,
});

wallets.hasMany(transactions, { foreignKey: 'wallet_id' });
transactions.belongsTo(wallets, { foreignKey: 'wallet_id' });

export default wallets;