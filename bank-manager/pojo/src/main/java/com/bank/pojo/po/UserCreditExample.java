package com.bank.pojo.po;

import java.util.ArrayList;
import java.util.List;

public class UserCreditExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserCreditExample() {
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

        public Criteria andCreditIdIsNull() {
            addCriterion("credit_id is null");
            return (Criteria) this;
        }

        public Criteria andCreditIdIsNotNull() {
            addCriterion("credit_id is not null");
            return (Criteria) this;
        }

        public Criteria andCreditIdEqualTo(Integer value) {
            addCriterion("credit_id =", value, "creditId");
            return (Criteria) this;
        }

        public Criteria andCreditIdNotEqualTo(Integer value) {
            addCriterion("credit_id <>", value, "creditId");
            return (Criteria) this;
        }

        public Criteria andCreditIdGreaterThan(Integer value) {
            addCriterion("credit_id >", value, "creditId");
            return (Criteria) this;
        }

        public Criteria andCreditIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("credit_id >=", value, "creditId");
            return (Criteria) this;
        }

        public Criteria andCreditIdLessThan(Integer value) {
            addCriterion("credit_id <", value, "creditId");
            return (Criteria) this;
        }

        public Criteria andCreditIdLessThanOrEqualTo(Integer value) {
            addCriterion("credit_id <=", value, "creditId");
            return (Criteria) this;
        }

        public Criteria andCreditIdIn(List<Integer> values) {
            addCriterion("credit_id in", values, "creditId");
            return (Criteria) this;
        }

        public Criteria andCreditIdNotIn(List<Integer> values) {
            addCriterion("credit_id not in", values, "creditId");
            return (Criteria) this;
        }

        public Criteria andCreditIdBetween(Integer value1, Integer value2) {
            addCriterion("credit_id between", value1, value2, "creditId");
            return (Criteria) this;
        }

        public Criteria andCreditIdNotBetween(Integer value1, Integer value2) {
            addCriterion("credit_id not between", value1, value2, "creditId");
            return (Criteria) this;
        }

        public Criteria andCreditNumberIsNull() {
            addCriterion("credit_number is null");
            return (Criteria) this;
        }

        public Criteria andCreditNumberIsNotNull() {
            addCriterion("credit_number is not null");
            return (Criteria) this;
        }

        public Criteria andCreditNumberEqualTo(Long value) {
            addCriterion("credit_number =", value, "creditNumber");
            return (Criteria) this;
        }

        public Criteria andCreditNumberNotEqualTo(Long value) {
            addCriterion("credit_number <>", value, "creditNumber");
            return (Criteria) this;
        }

        public Criteria andCreditNumberGreaterThan(Long value) {
            addCriterion("credit_number >", value, "creditNumber");
            return (Criteria) this;
        }

        public Criteria andCreditNumberGreaterThanOrEqualTo(Long value) {
            addCriterion("credit_number >=", value, "creditNumber");
            return (Criteria) this;
        }

        public Criteria andCreditNumberLessThan(Long value) {
            addCriterion("credit_number <", value, "creditNumber");
            return (Criteria) this;
        }

        public Criteria andCreditNumberLessThanOrEqualTo(Long value) {
            addCriterion("credit_number <=", value, "creditNumber");
            return (Criteria) this;
        }

        public Criteria andCreditNumberIn(List<Long> values) {
            addCriterion("credit_number in", values, "creditNumber");
            return (Criteria) this;
        }

        public Criteria andCreditNumberNotIn(List<Long> values) {
            addCriterion("credit_number not in", values, "creditNumber");
            return (Criteria) this;
        }

        public Criteria andCreditNumberBetween(Long value1, Long value2) {
            addCriterion("credit_number between", value1, value2, "creditNumber");
            return (Criteria) this;
        }

        public Criteria andCreditNumberNotBetween(Long value1, Long value2) {
            addCriterion("credit_number not between", value1, value2, "creditNumber");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordIsNull() {
            addCriterion("credit_password is null");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordIsNotNull() {
            addCriterion("credit_password is not null");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordEqualTo(Integer value) {
            addCriterion("credit_password =", value, "creditPassword");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordNotEqualTo(Integer value) {
            addCriterion("credit_password <>", value, "creditPassword");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordGreaterThan(Integer value) {
            addCriterion("credit_password >", value, "creditPassword");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordGreaterThanOrEqualTo(Integer value) {
            addCriterion("credit_password >=", value, "creditPassword");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordLessThan(Integer value) {
            addCriterion("credit_password <", value, "creditPassword");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordLessThanOrEqualTo(Integer value) {
            addCriterion("credit_password <=", value, "creditPassword");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordIn(List<Integer> values) {
            addCriterion("credit_password in", values, "creditPassword");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordNotIn(List<Integer> values) {
            addCriterion("credit_password not in", values, "creditPassword");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordBetween(Integer value1, Integer value2) {
            addCriterion("credit_password between", value1, value2, "creditPassword");
            return (Criteria) this;
        }

        public Criteria andCreditPasswordNotBetween(Integer value1, Integer value2) {
            addCriterion("credit_password not between", value1, value2, "creditPassword");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceIsNull() {
            addCriterion("credit_balance is null");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceIsNotNull() {
            addCriterion("credit_balance is not null");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceEqualTo(Double value) {
            addCriterion("credit_balance =", value, "creditBalance");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceNotEqualTo(Double value) {
            addCriterion("credit_balance <>", value, "creditBalance");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceGreaterThan(Double value) {
            addCriterion("credit_balance >", value, "creditBalance");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceGreaterThanOrEqualTo(Double value) {
            addCriterion("credit_balance >=", value, "creditBalance");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceLessThan(Double value) {
            addCriterion("credit_balance <", value, "creditBalance");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceLessThanOrEqualTo(Double value) {
            addCriterion("credit_balance <=", value, "creditBalance");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceIn(List<Double> values) {
            addCriterion("credit_balance in", values, "creditBalance");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceNotIn(List<Double> values) {
            addCriterion("credit_balance not in", values, "creditBalance");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceBetween(Double value1, Double value2) {
            addCriterion("credit_balance between", value1, value2, "creditBalance");
            return (Criteria) this;
        }

        public Criteria andCreditBalanceNotBetween(Double value1, Double value2) {
            addCriterion("credit_balance not between", value1, value2, "creditBalance");
            return (Criteria) this;
        }

        public Criteria andCreditStatusIsNull() {
            addCriterion("credit_status is null");
            return (Criteria) this;
        }

        public Criteria andCreditStatusIsNotNull() {
            addCriterion("credit_status is not null");
            return (Criteria) this;
        }

        public Criteria andCreditStatusEqualTo(Integer value) {
            addCriterion("credit_status =", value, "creditStatus");
            return (Criteria) this;
        }

        public Criteria andCreditStatusNotEqualTo(Integer value) {
            addCriterion("credit_status <>", value, "creditStatus");
            return (Criteria) this;
        }

        public Criteria andCreditStatusGreaterThan(Integer value) {
            addCriterion("credit_status >", value, "creditStatus");
            return (Criteria) this;
        }

        public Criteria andCreditStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("credit_status >=", value, "creditStatus");
            return (Criteria) this;
        }

        public Criteria andCreditStatusLessThan(Integer value) {
            addCriterion("credit_status <", value, "creditStatus");
            return (Criteria) this;
        }

        public Criteria andCreditStatusLessThanOrEqualTo(Integer value) {
            addCriterion("credit_status <=", value, "creditStatus");
            return (Criteria) this;
        }

        public Criteria andCreditStatusIn(List<Integer> values) {
            addCriterion("credit_status in", values, "creditStatus");
            return (Criteria) this;
        }

        public Criteria andCreditStatusNotIn(List<Integer> values) {
            addCriterion("credit_status not in", values, "creditStatus");
            return (Criteria) this;
        }

        public Criteria andCreditStatusBetween(Integer value1, Integer value2) {
            addCriterion("credit_status between", value1, value2, "creditStatus");
            return (Criteria) this;
        }

        public Criteria andCreditStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("credit_status not between", value1, value2, "creditStatus");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralIsNull() {
            addCriterion("credit_integral is null");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralIsNotNull() {
            addCriterion("credit_integral is not null");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralEqualTo(Long value) {
            addCriterion("credit_integral =", value, "creditIntegral");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralNotEqualTo(Long value) {
            addCriterion("credit_integral <>", value, "creditIntegral");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralGreaterThan(Long value) {
            addCriterion("credit_integral >", value, "creditIntegral");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralGreaterThanOrEqualTo(Long value) {
            addCriterion("credit_integral >=", value, "creditIntegral");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralLessThan(Long value) {
            addCriterion("credit_integral <", value, "creditIntegral");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralLessThanOrEqualTo(Long value) {
            addCriterion("credit_integral <=", value, "creditIntegral");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralIn(List<Long> values) {
            addCriterion("credit_integral in", values, "creditIntegral");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralNotIn(List<Long> values) {
            addCriterion("credit_integral not in", values, "creditIntegral");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralBetween(Long value1, Long value2) {
            addCriterion("credit_integral between", value1, value2, "creditIntegral");
            return (Criteria) this;
        }

        public Criteria andCreditIntegralNotBetween(Long value1, Long value2) {
            addCriterion("credit_integral not between", value1, value2, "creditIntegral");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdIsNull() {
            addCriterion("credit_user_id is null");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdIsNotNull() {
            addCriterion("credit_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdEqualTo(Integer value) {
            addCriterion("credit_user_id =", value, "creditUserId");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdNotEqualTo(Integer value) {
            addCriterion("credit_user_id <>", value, "creditUserId");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdGreaterThan(Integer value) {
            addCriterion("credit_user_id >", value, "creditUserId");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("credit_user_id >=", value, "creditUserId");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdLessThan(Integer value) {
            addCriterion("credit_user_id <", value, "creditUserId");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("credit_user_id <=", value, "creditUserId");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdIn(List<Integer> values) {
            addCriterion("credit_user_id in", values, "creditUserId");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdNotIn(List<Integer> values) {
            addCriterion("credit_user_id not in", values, "creditUserId");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdBetween(Integer value1, Integer value2) {
            addCriterion("credit_user_id between", value1, value2, "creditUserId");
            return (Criteria) this;
        }

        public Criteria andCreditUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("credit_user_id not between", value1, value2, "creditUserId");
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