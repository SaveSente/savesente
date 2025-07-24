import { DataTypes } from "sequelize";
import sequelize from "../config/database.js";

const transactions = sequelize.define('transactions', {
  id: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4,
    primaryKey: true,
  },
  wallet_id: {
    type: DataTypes.UUID,
    allowNull: false,
    references: {
      model: 'wallets',
      key: 'id',
    },
  },
  user_id: {
    type: DataTypes.UUID,
    allowNull: false,
    references: {
      model: 'user',
      key: 'id',
    },
  },
  type: {
    type: DataTypes.ENUM('deposit', 'withdrawal'),
    allowNull: false,
  },
  amount: {
    type: DataTypes.DECIMAL(18, 8),
    allowNull: false,
  },
  currency: {
    type: DataTypes.STRING,
    allowNull: false,
  },
  status: {
    type: DataTypes.ENUM('pending', 'completed', 'failed'),
    defaultValue: 'pending',
  },
  bitnob_transaction_id: {
    type: DataTypes.STRING,
    allowNull: true,
  },
  mobile_money_details: {
    type: DataTypes.JSON,
    allowNull: true,
  },
  createdAt: {
    allowNull: false,
    type: DataTypes.DATE,
  },
  updatedAt: {
    allowNull: false,
    type: DataTypes.DATE,
  },
}, {
  modelName: 'transactions',
  tableName: 'transactions',
  timestamps: true,
  freezeTableName: true,
});

export default transactions;