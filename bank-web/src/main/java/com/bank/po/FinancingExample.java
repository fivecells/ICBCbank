package com.bank.po;

import java.util.ArrayList;
import java.util.List;

public class FinancingExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FinancingExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andFinancingIdIsNull() {
            addCriterion("financing_id is null");
            return (Criteria) this;
        }

        public Criteria andFinancingIdIsNotNull() {
            addCriterion("financing_id is not null");
            return (Criteria) this;
        }

        public Criteria andFinancingIdEqualTo(Integer value) {
            addCriterion("financing_id =", value, "financingId");
            return (Criteria) this;
        }

        public Criteria andFinancingIdNotEqualTo(Integer value) {
            addCriterion("financing_id <>", value, "financingId");
            return (Criteria) this;
        }

        public Criteria andFinancingIdGreaterThan(Integer value) {
            addCriterion("financing_id >", value, "financingId");
            return (Criteria) this;
        }

        public Criteria andFinancingIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("financing_id >=", value, "financingId");
            return (Criteria) this;
        }

        public Criteria andFinancingIdLessThan(Integer value) {
            addCriterion("financing_id <", value, "financingId");
            return (Criteria) this;
        }

        public Criteria andFinancingIdLessThanOrEqualTo(Integer value) {
            addCriterion("financing_id <=", value, "financingId");
            return (Criteria) this;
        }

        public Criteria andFinancingIdIn(List<Integer> values) {
            addCriterion("financing_id in", values, "financingId");
            return (Criteria) this;
        }

        public Criteria andFinancingIdNotIn(List<Integer> values) {
            addCriterion("financing_id not in", values, "financingId");
            return (Criteria) this;
        }

        public Criteria andFinancingIdBetween(Integer value1, Integer value2) {
            addCriterion("financing_id between", value1, value2, "financingId");
            return (Criteria) this;
        }

        public Criteria andFinancingIdNotBetween(Integer value1, Integer value2) {
            addCriterion("financing_id not between", value1, value2, "financingId");
            return (Criteria) this;
        }

        public Criteria andFinancingNameIsNull() {
            addCriterion("financing_name is null");
            return (Criteria) this;
        }

        public Criteria andFinancingNameIsNotNull() {
            addCriterion("financing_name is not null");
            return (Criteria) this;
        }

        public Criteria andFinancingNameEqualTo(String value) {
            addCriterion("financing_name =", value, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameNotEqualTo(String value) {
            addCriterion("financing_name <>", value, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameGreaterThan(String value) {
            addCriterion("financing_name >", value, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameGreaterThanOrEqualTo(String value) {
            addCriterion("financing_name >=", value, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameLessThan(String value) {
            addCriterion("financing_name <", value, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameLessThanOrEqualTo(String value) {
            addCriterion("financing_name <=", value, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameLike(String value) {
            addCriterion("financing_name like", value, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameNotLike(String value) {
            addCriterion("financing_name not like", value, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameIn(List<String> values) {
            addCriterion("financing_name in", values, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameNotIn(List<String> values) {
            addCriterion("financing_name not in", values, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameBetween(String value1, String value2) {
            addCriterion("financing_name between", value1, value2, "financingName");
            return (Criteria) this;
        }

        public Criteria andFinancingNameNotBetween(String value1, String value2) {
            addCriterion("financing_name not between", value1, value2, "financingName");
            return (Criteria) this;
        }

        public Criteria andIncomePerIsNull() {
            addCriterion("income_per is null");
            return (Criteria) this;
        }

        public Criteria andIncomePerIsNotNull() {
            addCriterion("income_per is not null");
            return (Criteria) this;
        }

        public Criteria andIncomePerEqualTo(Double value) {
            addCriterion("income_per =", value, "incomePer");
            return (Criteria) this;
        }

        public Criteria andIncomePerNotEqualTo(Double value) {
            addCriterion("income_per <>", value, "incomePer");
            return (Criteria) this;
        }

        public Criteria andIncomePerGreaterThan(Double value) {
            addCriterion("income_per >", value, "incomePer");
            return (Criteria) this;
        }

        public Criteria andIncomePerGreaterThanOrEqualTo(Double value) {
            addCriterion("income_per >=", value, "incomePer");
            return (Criteria) this;
        }

        public Criteria andIncomePerLessThan(Double value) {
            addCriterion("income_per <", value, "incomePer");
            return (Criteria) this;
        }

        public Criteria andIncomePerLessThanOrEqualTo(Double value) {
            addCriterion("income_per <=", value, "incomePer");
            return (Criteria) this;
        }

        public Criteria andIncomePerIn(List<Double> values) {
            addCriterion("income_per in", values, "incomePer");
            return (Criteria) this;
        }

        public Criteria andIncomePerNotIn(List<Double> values) {
            addCriterion("income_per not in", values, "incomePer");
            return (Criteria) this;
        }

        public Criteria andIncomePerBetween(Double value1, Double value2) {
            addCriterion("income_per between", value1, value2, "incomePer");
            return (Criteria) this;
        }

        public Criteria andIncomePerNotBetween(Double value1, Double value2) {
            addCriterion("income_per not between", value1, value2, "incomePer");
            return (Criteria) this;
        }

        public Criteria andBeginPriceIsNull() {
            addCriterion("begin_price is null");
            return (Criteria) this;
        }

        public Criteria andBeginPriceIsNotNull() {
            addCriterion("begin_price is not null");
            return (Criteria) this;
        }

        public Criteria andBeginPriceEqualTo(Double value) {
            addCriterion("begin_price =", value, "beginPrice");
            return (Criteria) this;
        }

        public Criteria andBeginPriceNotEqualTo(Double value) {
            addCriterion("begin_price <>", value, "beginPrice");
            return (Criteria) this;
        }

        public Criteria andBeginPriceGreaterThan(Double value) {
            addCriterion("begin_price >", value, "beginPrice");
            return (Criteria) this;
        }

        public Criteria andBeginPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("begin_price >=", value, "beginPrice");
            return (Criteria) this;
        }

        public Criteria andBeginPriceLessThan(Double value) {
            addCriterion("begin_price <", value, "beginPrice");
            return (Criteria) this;
        }

        public Criteria andBeginPriceLessThanOrEqualTo(Double value) {
            addCriterion("begin_price <=", value, "beginPrice");
            return (Criteria) this;
        }

        public Criteria andBeginPriceIn(List<Double> values) {
            addCriterion("begin_price in", values, "beginPrice");
            return (Criteria) this;
        }

        public Criteria andBeginPriceNotIn(List<Double> values) {
            addCriterion("begin_price not in", values, "beginPrice");
            return (Criteria) this;
        }

        public Criteria andBeginPriceBetween(Double value1, Double value2) {
            addCriterion("begin_price between", value1, value2, "beginPrice");
            return (Criteria) this;
        }

        public Criteria andBeginPriceNotBetween(Double value1, Double value2) {
            addCriterion("begin_price not between", value1, value2, "beginPrice");
            return (Criteria) this;
        }

        public Criteria andTimeLimitIsNull() {
            addCriterion("time_limit is null");
            return (Criteria) this;
        }

        public Criteria andTimeLimitIsNotNull() {
            addCriterion("time_limit is not null");
            return (Criteria) this;
        }

        public Criteria andTimeLimitEqualTo(Integer value) {
            addCriterion("time_limit =", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitNotEqualTo(Integer value) {
            addCriterion("time_limit <>", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitGreaterThan(Integer value) {
            addCriterion("time_limit >", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitGreaterThanOrEqualTo(Integer value) {
            addCriterion("time_limit >=", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitLessThan(Integer value) {
            addCriterion("time_limit <", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitLessThanOrEqualTo(Integer value) {
            addCriterion("time_limit <=", value, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitIn(List<Integer> values) {
            addCriterion("time_limit in", values, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitNotIn(List<Integer> values) {
            addCriterion("time_limit not in", values, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitBetween(Integer value1, Integer value2) {
            addCriterion("time_limit between", value1, value2, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andTimeLimitNotBetween(Integer value1, Integer value2) {
            addCriterion("time_limit not between", value1, value2, "timeLimit");
            return (Criteria) this;
        }

        public Criteria andRiskLevelIsNull() {
            addCriterion("risk_level is null");
            return (Criteria) this;
        }

        public Criteria andRiskLevelIsNotNull() {
            addCriterion("risk_level is not null");
            return (Criteria) this;
        }

        public Criteria andRiskLevelEqualTo(Integer value) {
            addCriterion("risk_level =", value, "riskLevel");
            return (Criteria) this;
        }

        public Criteria andRiskLevelNotEqualTo(Integer value) {
            addCriterion("risk_level <>", value, "riskLevel");
            return (Criteria) this;
        }

        public Criteria andRiskLevelGreaterThan(Integer value) {
            addCriterion("risk_level >", value, "riskLevel");
            return (Criteria) this;
        }

        public Criteria andRiskLevelGreaterThanOrEqualTo(Integer value) {
            addCriterion("risk_level >=", value, "riskLevel");
            return (Criteria) this;
        }

        public Criteria andRiskLevelLessThan(Integer value) {
            addCriterion("risk_level <", value, "riskLevel");
            return (Criteria) this;
        }

        public Criteria andRiskLevelLessThanOrEqualTo(Integer value) {
            addCriterion("risk_level <=", value, "riskLevel");
            return (Criteria) this;
        }

        public Criteria andRiskLevelIn(List<Integer> values) {
            addCriterion("risk_level in", values, "riskLevel");
            return (Criteria) this;
        }

        public Criteria andRiskLevelNotIn(List<Integer> values) {
            addCriterion("risk_level not in", values, "riskLevel");
            return (Criteria) this;
        }

        public Criteria andRiskLevelBetween(Integer value1, Integer value2) {
            addCriterion("risk_level between", value1, value2, "riskLevel");
            return (Criteria) this;
        }

        public Criteria andRiskLevelNotBetween(Integer value1, Integer value2) {
            addCriterion("risk_level not between", value1, value2, "riskLevel");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdIsNull() {
            addCriterion("financing_user_id is null");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdIsNotNull() {
            addCriterion("financing_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdEqualTo(Integer value) {
            addCriterion("financing_user_id =", value, "financingUserId");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdNotEqualTo(Integer value) {
            addCriterion("financing_user_id <>", value, "financingUserId");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdGreaterThan(Integer value) {
            addCriterion("financing_user_id >", value, "financingUserId");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("financing_user_id >=", value, "financingUserId");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdLessThan(Integer value) {
            addCriterion("financing_user_id <", value, "financingUserId");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("financing_user_id <=", value, "financingUserId");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdIn(List<Integer> values) {
            addCriterion("financing_user_id in", values, "financingUserId");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdNotIn(List<Integer> values) {
            addCriterion("financing_user_id not in", values, "financingUserId");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdBetween(Integer value1, Integer value2) {
            addCriterion("financing_user_id between", value1, value2, "financingUserId");
            return (Criteria) this;
        }

        public Criteria andFinancingUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("financing_user_id not between", value1, value2, "financingUserId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}