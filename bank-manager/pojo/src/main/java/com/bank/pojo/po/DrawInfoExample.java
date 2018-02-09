package com.bank.pojo.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class DrawInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public DrawInfoExample() {
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

        public Criteria andDrawIdIsNull() {
            addCriterion("draw_id is null");
            return (Criteria) this;
        }

        public Criteria andDrawIdIsNotNull() {
            addCriterion("draw_id is not null");
            return (Criteria) this;
        }

        public Criteria andDrawIdEqualTo(Integer value) {
            addCriterion("draw_id =", value, "drawId");
            return (Criteria) this;
        }

        public Criteria andDrawIdNotEqualTo(Integer value) {
            addCriterion("draw_id <>", value, "drawId");
            return (Criteria) this;
        }

        public Criteria andDrawIdGreaterThan(Integer value) {
            addCriterion("draw_id >", value, "drawId");
            return (Criteria) this;
        }

        public Criteria andDrawIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("draw_id >=", value, "drawId");
            return (Criteria) this;
        }

        public Criteria andDrawIdLessThan(Integer value) {
            addCriterion("draw_id <", value, "drawId");
            return (Criteria) this;
        }

        public Criteria andDrawIdLessThanOrEqualTo(Integer value) {
            addCriterion("draw_id <=", value, "drawId");
            return (Criteria) this;
        }

        public Criteria andDrawIdIn(List<Integer> values) {
            addCriterion("draw_id in", values, "drawId");
            return (Criteria) this;
        }

        public Criteria andDrawIdNotIn(List<Integer> values) {
            addCriterion("draw_id not in", values, "drawId");
            return (Criteria) this;
        }

        public Criteria andDrawIdBetween(Integer value1, Integer value2) {
            addCriterion("draw_id between", value1, value2, "drawId");
            return (Criteria) this;
        }

        public Criteria andDrawIdNotBetween(Integer value1, Integer value2) {
            addCriterion("draw_id not between", value1, value2, "drawId");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdIsNull() {
            addCriterion("draw_waiter_id is null");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdIsNotNull() {
            addCriterion("draw_waiter_id is not null");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdEqualTo(Integer value) {
            addCriterion("draw_waiter_id =", value, "drawWaiterId");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdNotEqualTo(Integer value) {
            addCriterion("draw_waiter_id <>", value, "drawWaiterId");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdGreaterThan(Integer value) {
            addCriterion("draw_waiter_id >", value, "drawWaiterId");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("draw_waiter_id >=", value, "drawWaiterId");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdLessThan(Integer value) {
            addCriterion("draw_waiter_id <", value, "drawWaiterId");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdLessThanOrEqualTo(Integer value) {
            addCriterion("draw_waiter_id <=", value, "drawWaiterId");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdIn(List<Integer> values) {
            addCriterion("draw_waiter_id in", values, "drawWaiterId");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdNotIn(List<Integer> values) {
            addCriterion("draw_waiter_id not in", values, "drawWaiterId");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdBetween(Integer value1, Integer value2) {
            addCriterion("draw_waiter_id between", value1, value2, "drawWaiterId");
            return (Criteria) this;
        }

        public Criteria andDrawWaiterIdNotBetween(Integer value1, Integer value2) {
            addCriterion("draw_waiter_id not between", value1, value2, "drawWaiterId");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdIsNull() {
            addCriterion("draw_card_id is null");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdIsNotNull() {
            addCriterion("draw_card_id is not null");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdEqualTo(Long value) {
            addCriterion("draw_card_id =", value, "drawCardId");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdNotEqualTo(Long value) {
            addCriterion("draw_card_id <>", value, "drawCardId");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdGreaterThan(Long value) {
            addCriterion("draw_card_id >", value, "drawCardId");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdGreaterThanOrEqualTo(Long value) {
            addCriterion("draw_card_id >=", value, "drawCardId");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdLessThan(Long value) {
            addCriterion("draw_card_id <", value, "drawCardId");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdLessThanOrEqualTo(Long value) {
            addCriterion("draw_card_id <=", value, "drawCardId");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdIn(List<Long> values) {
            addCriterion("draw_card_id in", values, "drawCardId");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdNotIn(List<Long> values) {
            addCriterion("draw_card_id not in", values, "drawCardId");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdBetween(Long value1, Long value2) {
            addCriterion("draw_card_id between", value1, value2, "drawCardId");
            return (Criteria) this;
        }

        public Criteria andDrawCardIdNotBetween(Long value1, Long value2) {
            addCriterion("draw_card_id not between", value1, value2, "drawCardId");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyIsNull() {
            addCriterion("draw_money is null");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyIsNotNull() {
            addCriterion("draw_money is not null");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyEqualTo(Double value) {
            addCriterion("draw_money =", value, "drawMoney");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyNotEqualTo(Double value) {
            addCriterion("draw_money <>", value, "drawMoney");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyGreaterThan(Double value) {
            addCriterion("draw_money >", value, "drawMoney");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("draw_money >=", value, "drawMoney");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyLessThan(Double value) {
            addCriterion("draw_money <", value, "drawMoney");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyLessThanOrEqualTo(Double value) {
            addCriterion("draw_money <=", value, "drawMoney");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyIn(List<Double> values) {
            addCriterion("draw_money in", values, "drawMoney");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyNotIn(List<Double> values) {
            addCriterion("draw_money not in", values, "drawMoney");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyBetween(Double value1, Double value2) {
            addCriterion("draw_money between", value1, value2, "drawMoney");
            return (Criteria) this;
        }

        public Criteria andDrawMoneyNotBetween(Double value1, Double value2) {
            addCriterion("draw_money not between", value1, value2, "drawMoney");
            return (Criteria) this;
        }

        public Criteria andDrawTimeIsNull() {
            addCriterion("draw_time is null");
            return (Criteria) this;
        }

        public Criteria andDrawTimeIsNotNull() {
            addCriterion("draw_time is not null");
            return (Criteria) this;
        }

        public Criteria andDrawTimeEqualTo(Date value) {
            addCriterion("draw_time =", value, "drawTime");
            return (Criteria) this;
        }

        public Criteria andDrawTimeNotEqualTo(Date value) {
            addCriterion("draw_time <>", value, "drawTime");
            return (Criteria) this;
        }

        public Criteria andDrawTimeGreaterThan(Date value) {
            addCriterion("draw_time >", value, "drawTime");
            return (Criteria) this;
        }

        public Criteria andDrawTimeGreaterThanOrEqualTo(Date value) {
            addCriterion("draw_time >=", value, "drawTime");
            return (Criteria) this;
        }

        public Criteria andDrawTimeLessThan(Date value) {
            addCriterion("draw_time <", value, "drawTime");
            return (Criteria) this;
        }

        public Criteria andDrawTimeLessThanOrEqualTo(Date value) {
            addCriterion("draw_time <=", value, "drawTime");
            return (Criteria) this;
        }

        public Criteria andDrawTimeIn(List<Date> values) {
            addCriterion("draw_time in", values, "drawTime");
            return (Criteria) this;
        }

        public Criteria andDrawTimeNotIn(List<Date> values) {
            addCriterion("draw_time not in", values, "drawTime");
            return (Criteria) this;
        }

        public Criteria andDrawTimeBetween(Date value1, Date value2) {
            addCriterion("draw_time between", value1, value2, "drawTime");
            return (Criteria) this;
        }

        public Criteria andDrawTimeNotBetween(Date value1, Date value2) {
            addCriterion("draw_time not between", value1, value2, "drawTime");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryIsNull() {
            addCriterion("draw_summary is null");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryIsNotNull() {
            addCriterion("draw_summary is not null");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryEqualTo(String value) {
            addCriterion("draw_summary =", value, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryNotEqualTo(String value) {
            addCriterion("draw_summary <>", value, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryGreaterThan(String value) {
            addCriterion("draw_summary >", value, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryGreaterThanOrEqualTo(String value) {
            addCriterion("draw_summary >=", value, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryLessThan(String value) {
            addCriterion("draw_summary <", value, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryLessThanOrEqualTo(String value) {
            addCriterion("draw_summary <=", value, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryLike(String value) {
            addCriterion("draw_summary like", value, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryNotLike(String value) {
            addCriterion("draw_summary not like", value, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryIn(List<String> values) {
            addCriterion("draw_summary in", values, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryNotIn(List<String> values) {
            addCriterion("draw_summary not in", values, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryBetween(String value1, String value2) {
            addCriterion("draw_summary between", value1, value2, "drawSummary");
            return (Criteria) this;
        }

        public Criteria andDrawSummaryNotBetween(String value1, String value2) {
            addCriterion("draw_summary not between", value1, value2, "drawSummary");
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