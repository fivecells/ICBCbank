package com.bank.pojo.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class SaveInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public SaveInfoExample() {
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

        public Criteria andSaveIdIsNull() {
            addCriterion("save_id is null");
            return (Criteria) this;
        }

        public Criteria andSaveIdIsNotNull() {
            addCriterion("save_id is not null");
            return (Criteria) this;
        }

        public Criteria andSaveIdEqualTo(Integer value) {
            addCriterion("save_id =", value, "saveId");
            return (Criteria) this;
        }

        public Criteria andSaveIdNotEqualTo(Integer value) {
            addCriterion("save_id <>", value, "saveId");
            return (Criteria) this;
        }

        public Criteria andSaveIdGreaterThan(Integer value) {
            addCriterion("save_id >", value, "saveId");
            return (Criteria) this;
        }

        public Criteria andSaveIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("save_id >=", value, "saveId");
            return (Criteria) this;
        }

        public Criteria andSaveIdLessThan(Integer value) {
            addCriterion("save_id <", value, "saveId");
            return (Criteria) this;
        }

        public Criteria andSaveIdLessThanOrEqualTo(Integer value) {
            addCriterion("save_id <=", value, "saveId");
            return (Criteria) this;
        }

        public Criteria andSaveIdIn(List<Integer> values) {
            addCriterion("save_id in", values, "saveId");
            return (Criteria) this;
        }

        public Criteria andSaveIdNotIn(List<Integer> values) {
            addCriterion("save_id not in", values, "saveId");
            return (Criteria) this;
        }

        public Criteria andSaveIdBetween(Integer value1, Integer value2) {
            addCriterion("save_id between", value1, value2, "saveId");
            return (Criteria) this;
        }

        public Criteria andSaveIdNotBetween(Integer value1, Integer value2) {
            addCriterion("save_id not between", value1, value2, "saveId");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdIsNull() {
            addCriterion("save_waiter_id is null");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdIsNotNull() {
            addCriterion("save_waiter_id is not null");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdEqualTo(Integer value) {
            addCriterion("save_waiter_id =", value, "saveWaiterId");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdNotEqualTo(Integer value) {
            addCriterion("save_waiter_id <>", value, "saveWaiterId");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdGreaterThan(Integer value) {
            addCriterion("save_waiter_id >", value, "saveWaiterId");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("save_waiter_id >=", value, "saveWaiterId");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdLessThan(Integer value) {
            addCriterion("save_waiter_id <", value, "saveWaiterId");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdLessThanOrEqualTo(Integer value) {
            addCriterion("save_waiter_id <=", value, "saveWaiterId");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdIn(List<Integer> values) {
            addCriterion("save_waiter_id in", values, "saveWaiterId");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdNotIn(List<Integer> values) {
            addCriterion("save_waiter_id not in", values, "saveWaiterId");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdBetween(Integer value1, Integer value2) {
            addCriterion("save_waiter_id between", value1, value2, "saveWaiterId");
            return (Criteria) this;
        }

        public Criteria andSaveWaiterIdNotBetween(Integer value1, Integer value2) {
            addCriterion("save_waiter_id not between", value1, value2, "saveWaiterId");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdIsNull() {
            addCriterion("save_card_id is null");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdIsNotNull() {
            addCriterion("save_card_id is not null");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdEqualTo(Long value) {
            addCriterion("save_card_id =", value, "saveCardId");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdNotEqualTo(Long value) {
            addCriterion("save_card_id <>", value, "saveCardId");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdGreaterThan(Long value) {
            addCriterion("save_card_id >", value, "saveCardId");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdGreaterThanOrEqualTo(Long value) {
            addCriterion("save_card_id >=", value, "saveCardId");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdLessThan(Long value) {
            addCriterion("save_card_id <", value, "saveCardId");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdLessThanOrEqualTo(Long value) {
            addCriterion("save_card_id <=", value, "saveCardId");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdIn(List<Long> values) {
            addCriterion("save_card_id in", values, "saveCardId");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdNotIn(List<Long> values) {
            addCriterion("save_card_id not in", values, "saveCardId");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdBetween(Long value1, Long value2) {
            addCriterion("save_card_id between", value1, value2, "saveCardId");
            return (Criteria) this;
        }

        public Criteria andSaveCardIdNotBetween(Long value1, Long value2) {
            addCriterion("save_card_id not between", value1, value2, "saveCardId");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyIsNull() {
            addCriterion("save_money is null");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyIsNotNull() {
            addCriterion("save_money is not null");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyEqualTo(Double value) {
            addCriterion("save_money =", value, "saveMoney");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyNotEqualTo(Double value) {
            addCriterion("save_money <>", value, "saveMoney");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyGreaterThan(Double value) {
            addCriterion("save_money >", value, "saveMoney");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("save_money >=", value, "saveMoney");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyLessThan(Double value) {
            addCriterion("save_money <", value, "saveMoney");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyLessThanOrEqualTo(Double value) {
            addCriterion("save_money <=", value, "saveMoney");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyIn(List<Double> values) {
            addCriterion("save_money in", values, "saveMoney");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyNotIn(List<Double> values) {
            addCriterion("save_money not in", values, "saveMoney");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyBetween(Double value1, Double value2) {
            addCriterion("save_money between", value1, value2, "saveMoney");
            return (Criteria) this;
        }

        public Criteria andSaveMoneyNotBetween(Double value1, Double value2) {
            addCriterion("save_money not between", value1, value2, "saveMoney");
            return (Criteria) this;
        }

        public Criteria andSaveTimeIsNull() {
            addCriterion("save_time is null");
            return (Criteria) this;
        }

        public Criteria andSaveTimeIsNotNull() {
            addCriterion("save_time is not null");
            return (Criteria) this;
        }

        public Criteria andSaveTimeEqualTo(Date value) {
            addCriterion("save_time =", value, "saveTime");
            return (Criteria) this;
        }

        public Criteria andSaveTimeNotEqualTo(Date value) {
            addCriterion("save_time <>", value, "saveTime");
            return (Criteria) this;
        }

        public Criteria andSaveTimeGreaterThan(Date value) {
            addCriterion("save_time >", value, "saveTime");
            return (Criteria) this;
        }

        public Criteria andSaveTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("save_time >=", value, "saveTime");
            return (Criteria) this;
        }

        public Criteria andSaveTimeLessThan(Date value) {
            addCriterion("save_time <", value, "saveTime");
            return (Criteria) this;
        }

        public Criteria andSaveTimeLessThanOrEqualTo(Date value) {
            addCriterion("save_time <=", value, "saveTime");
            return (Criteria) this;
        }

        public Criteria andSaveTimeIn(List<Date> values) {
            addCriterion("save_time in", values, "saveTime");
            return (Criteria) this;
        }

        public Criteria andSaveTimeNotIn(List<Date> values) {
            addCriterion("save_time not in", values, "saveTime");
            return (Criteria) this;
        }

        public Criteria andSaveTimeBetween(Date value1, Date value2) {
            addCriterion("save_time between", value1, value2, "saveTime");
            return (Criteria) this;
        }

        public Criteria andSaveTimeNotBetween(Date value1, Date value2) {
            addCriterion("save_time not between", value1, value2, "saveTime");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryIsNull() {
            addCriterion("save_summary is null");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryIsNotNull() {
            addCriterion("save_summary is not null");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryEqualTo(String value) {
            addCriterion("save_summary =", value, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryNotEqualTo(String value) {
            addCriterion("save_summary <>", value, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryGreaterThan(String value) {
            addCriterion("save_summary >", value, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryGreaterThanOrEqualTo(String value) {
            addCriterion("save_summary >=", value, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryLessThan(String value) {
            addCriterion("save_summary <", value, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryLessThanOrEqualTo(String value) {
            addCriterion("save_summary <=", value, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryLike(String value) {
            addCriterion("save_summary like", value, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryNotLike(String value) {
            addCriterion("save_summary not like", value, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryIn(List<String> values) {
            addCriterion("save_summary in", values, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryNotIn(List<String> values) {
            addCriterion("save_summary not in", values, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryBetween(String value1, String value2) {
            addCriterion("save_summary between", value1, value2, "saveSummary");
            return (Criteria) this;
        }

        public Criteria andSaveSummaryNotBetween(String value1, String value2) {
            addCriterion("save_summary not between", value1, value2, "saveSummary");
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