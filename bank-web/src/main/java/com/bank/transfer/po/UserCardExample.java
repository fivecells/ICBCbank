package com.bank.transfer.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class UserCardExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public UserCardExample() {
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

        public Criteria andUserCardIdIsNull() {
            addCriterion("user_card_id is null");
            return (Criteria) this;
        }

        public Criteria andUserCardIdIsNotNull() {
            addCriterion("user_card_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserCardIdEqualTo(Long value) {
            addCriterion("user_card_id =", value, "userCardId");
            return (Criteria) this;
        }

        public Criteria andUserCardIdNotEqualTo(Long value) {
            addCriterion("user_card_id <>", value, "userCardId");
            return (Criteria) this;
        }

        public Criteria andUserCardIdGreaterThan(Long value) {
            addCriterion("user_card_id >", value, "userCardId");
            return (Criteria) this;
        }

        public Criteria andUserCardIdGreaterThanOrEqualTo(Long value) {
            addCriterion("user_card_id >=", value, "userCardId");
            return (Criteria) this;
        }

        public Criteria andUserCardIdLessThan(Long value) {
            addCriterion("user_card_id <", value, "userCardId");
            return (Criteria) this;
        }

        public Criteria andUserCardIdLessThanOrEqualTo(Long value) {
            addCriterion("user_card_id <=", value, "userCardId");
            return (Criteria) this;
        }

        public Criteria andUserCardIdIn(List<Long> values) {
            addCriterion("user_card_id in", values, "userCardId");
            return (Criteria) this;
        }

        public Criteria andUserCardIdNotIn(List<Long> values) {
            addCriterion("user_card_id not in", values, "userCardId");
            return (Criteria) this;
        }

        public Criteria andUserCardIdBetween(Long value1, Long value2) {
            addCriterion("user_card_id between", value1, value2, "userCardId");
            return (Criteria) this;
        }

        public Criteria andUserCardIdNotBetween(Long value1, Long value2) {
            addCriterion("user_card_id not between", value1, value2, "userCardId");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordIsNull() {
            addCriterion("user_card_password is null");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordIsNotNull() {
            addCriterion("user_card_password is not null");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordEqualTo(Integer value) {
            addCriterion("user_card_password =", value, "userCardPassword");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordNotEqualTo(Integer value) {
            addCriterion("user_card_password <>", value, "userCardPassword");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordGreaterThan(Integer value) {
            addCriterion("user_card_password >", value, "userCardPassword");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_card_password >=", value, "userCardPassword");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordLessThan(Integer value) {
            addCriterion("user_card_password <", value, "userCardPassword");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordLessThanOrEqualTo(Integer value) {
            addCriterion("user_card_password <=", value, "userCardPassword");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordIn(List<Integer> values) {
            addCriterion("user_card_password in", values, "userCardPassword");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordNotIn(List<Integer> values) {
            addCriterion("user_card_password not in", values, "userCardPassword");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordBetween(Integer value1, Integer value2) {
            addCriterion("user_card_password between", value1, value2, "userCardPassword");
            return (Criteria) this;
        }

        public Criteria andUserCardPasswordNotBetween(Integer value1, Integer value2) {
            addCriterion("user_card_password not between", value1, value2, "userCardPassword");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountIsNull() {
            addCriterion("user_card_amount is null");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountIsNotNull() {
            addCriterion("user_card_amount is not null");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountEqualTo(Double value) {
            addCriterion("user_card_amount =", value, "userCardAmount");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountNotEqualTo(Double value) {
            addCriterion("user_card_amount <>", value, "userCardAmount");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountGreaterThan(Double value) {
            addCriterion("user_card_amount >", value, "userCardAmount");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountGreaterThanOrEqualTo(Double value) {
            addCriterion("user_card_amount >=", value, "userCardAmount");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountLessThan(Double value) {
            addCriterion("user_card_amount <", value, "userCardAmount");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountLessThanOrEqualTo(Double value) {
            addCriterion("user_card_amount <=", value, "userCardAmount");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountIn(List<Double> values) {
            addCriterion("user_card_amount in", values, "userCardAmount");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountNotIn(List<Double> values) {
            addCriterion("user_card_amount not in", values, "userCardAmount");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountBetween(Double value1, Double value2) {
            addCriterion("user_card_amount between", value1, value2, "userCardAmount");
            return (Criteria) this;
        }

        public Criteria andUserCardAmountNotBetween(Double value1, Double value2) {
            addCriterion("user_card_amount not between", value1, value2, "userCardAmount");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusIsNull() {
            addCriterion("user_card_status is null");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusIsNotNull() {
            addCriterion("user_card_status is not null");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusEqualTo(Integer value) {
            addCriterion("user_card_status =", value, "userCardStatus");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusNotEqualTo(Integer value) {
            addCriterion("user_card_status <>", value, "userCardStatus");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusGreaterThan(Integer value) {
            addCriterion("user_card_status >", value, "userCardStatus");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_card_status >=", value, "userCardStatus");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusLessThan(Integer value) {
            addCriterion("user_card_status <", value, "userCardStatus");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusLessThanOrEqualTo(Integer value) {
            addCriterion("user_card_status <=", value, "userCardStatus");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusIn(List<Integer> values) {
            addCriterion("user_card_status in", values, "userCardStatus");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusNotIn(List<Integer> values) {
            addCriterion("user_card_status not in", values, "userCardStatus");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusBetween(Integer value1, Integer value2) {
            addCriterion("user_card_status between", value1, value2, "userCardStatus");
            return (Criteria) this;
        }

        public Criteria andUserCardStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("user_card_status not between", value1, value2, "userCardStatus");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchIsNull() {
            addCriterion("user_card_subbranch is null");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchIsNotNull() {
            addCriterion("user_card_subbranch is not null");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchEqualTo(String value) {
            addCriterion("user_card_subbranch =", value, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchNotEqualTo(String value) {
            addCriterion("user_card_subbranch <>", value, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchGreaterThan(String value) {
            addCriterion("user_card_subbranch >", value, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchGreaterThanOrEqualTo(String value) {
            addCriterion("user_card_subbranch >=", value, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchLessThan(String value) {
            addCriterion("user_card_subbranch <", value, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchLessThanOrEqualTo(String value) {
            addCriterion("user_card_subbranch <=", value, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchLike(String value) {
            addCriterion("user_card_subbranch like", value, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchNotLike(String value) {
            addCriterion("user_card_subbranch not like", value, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchIn(List<String> values) {
            addCriterion("user_card_subbranch in", values, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchNotIn(List<String> values) {
            addCriterion("user_card_subbranch not in", values, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchBetween(String value1, String value2) {
            addCriterion("user_card_subbranch between", value1, value2, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardSubbranchNotBetween(String value1, String value2) {
            addCriterion("user_card_subbranch not between", value1, value2, "userCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeIsNull() {
            addCriterion("user_card_createtime is null");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeIsNotNull() {
            addCriterion("user_card_createtime is not null");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeEqualTo(Date value) {
            addCriterion("user_card_createtime =", value, "userCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeNotEqualTo(Date value) {
            addCriterion("user_card_createtime <>", value, "userCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeGreaterThan(Date value) {
            addCriterion("user_card_createtime >", value, "userCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("user_card_createtime >=", value, "userCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeLessThan(Date value) {
            addCriterion("user_card_createtime <", value, "userCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeLessThanOrEqualTo(Date value) {
            addCriterion("user_card_createtime <=", value, "userCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeIn(List<Date> values) {
            addCriterion("user_card_createtime in", values, "userCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeNotIn(List<Date> values) {
            addCriterion("user_card_createtime not in", values, "userCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeBetween(Date value1, Date value2) {
            addCriterion("user_card_createtime between", value1, value2, "userCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andUserCardCreatetimeNotBetween(Date value1, Date value2) {
            addCriterion("user_card_createtime not between", value1, value2, "userCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNull() {
            addCriterion("user_id is null");
            return (Criteria) this;
        }

        public Criteria andUserIdIsNotNull() {
            addCriterion("user_id is not null");
            return (Criteria) this;
        }

        public Criteria andUserIdEqualTo(Integer value) {
            addCriterion("user_id =", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotEqualTo(Integer value) {
            addCriterion("user_id <>", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThan(Integer value) {
            addCriterion("user_id >", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("user_id >=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThan(Integer value) {
            addCriterion("user_id <", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("user_id <=", value, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdIn(List<Integer> values) {
            addCriterion("user_id in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotIn(List<Integer> values) {
            addCriterion("user_id not in", values, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdBetween(Integer value1, Integer value2) {
            addCriterion("user_id between", value1, value2, "userId");
            return (Criteria) this;
        }

        public Criteria andUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("user_id not between", value1, value2, "userId");
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