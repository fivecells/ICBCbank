package com.bank.po;

import java.util.ArrayList;
import java.util.List;

public class MetalPoxyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MetalPoxyExample() {
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

        public Criteria andMetalIdIsNull() {
            addCriterion("metal_id is null");
            return (Criteria) this;
        }

        public Criteria andMetalIdIsNotNull() {
            addCriterion("metal_id is not null");
            return (Criteria) this;
        }

        public Criteria andMetalIdEqualTo(Integer value) {
            addCriterion("metal_id =", value, "metalId");
            return (Criteria) this;
        }

        public Criteria andMetalIdNotEqualTo(Integer value) {
            addCriterion("metal_id <>", value, "metalId");
            return (Criteria) this;
        }

        public Criteria andMetalIdGreaterThan(Integer value) {
            addCriterion("metal_id >", value, "metalId");
            return (Criteria) this;
        }

        public Criteria andMetalIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("metal_id >=", value, "metalId");
            return (Criteria) this;
        }

        public Criteria andMetalIdLessThan(Integer value) {
            addCriterion("metal_id <", value, "metalId");
            return (Criteria) this;
        }

        public Criteria andMetalIdLessThanOrEqualTo(Integer value) {
            addCriterion("metal_id <=", value, "metalId");
            return (Criteria) this;
        }

        public Criteria andMetalIdIn(List<Integer> values) {
            addCriterion("metal_id in", values, "metalId");
            return (Criteria) this;
        }

        public Criteria andMetalIdNotIn(List<Integer> values) {
            addCriterion("metal_id not in", values, "metalId");
            return (Criteria) this;
        }

        public Criteria andMetalIdBetween(Integer value1, Integer value2) {
            addCriterion("metal_id between", value1, value2, "metalId");
            return (Criteria) this;
        }

        public Criteria andMetalIdNotBetween(Integer value1, Integer value2) {
            addCriterion("metal_id not between", value1, value2, "metalId");
            return (Criteria) this;
        }

        public Criteria andMetalNameIsNull() {
            addCriterion("metal_name is null");
            return (Criteria) this;
        }

        public Criteria andMetalNameIsNotNull() {
            addCriterion("metal_name is not null");
            return (Criteria) this;
        }

        public Criteria andMetalNameEqualTo(String value) {
            addCriterion("metal_name =", value, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameNotEqualTo(String value) {
            addCriterion("metal_name <>", value, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameGreaterThan(String value) {
            addCriterion("metal_name >", value, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameGreaterThanOrEqualTo(String value) {
            addCriterion("metal_name >=", value, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameLessThan(String value) {
            addCriterion("metal_name <", value, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameLessThanOrEqualTo(String value) {
            addCriterion("metal_name <=", value, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameLike(String value) {
            addCriterion("metal_name like", value, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameNotLike(String value) {
            addCriterion("metal_name not like", value, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameIn(List<String> values) {
            addCriterion("metal_name in", values, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameNotIn(List<String> values) {
            addCriterion("metal_name not in", values, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameBetween(String value1, String value2) {
            addCriterion("metal_name between", value1, value2, "metalName");
            return (Criteria) this;
        }

        public Criteria andMetalNameNotBetween(String value1, String value2) {
            addCriterion("metal_name not between", value1, value2, "metalName");
            return (Criteria) this;
        }

        public Criteria andPresentPriceIsNull() {
            addCriterion("present_price is null");
            return (Criteria) this;
        }

        public Criteria andPresentPriceIsNotNull() {
            addCriterion("present_price is not null");
            return (Criteria) this;
        }

        public Criteria andPresentPriceEqualTo(Double value) {
            addCriterion("present_price =", value, "presentPrice");
            return (Criteria) this;
        }

        public Criteria andPresentPriceNotEqualTo(Double value) {
            addCriterion("present_price <>", value, "presentPrice");
            return (Criteria) this;
        }

        public Criteria andPresentPriceGreaterThan(Double value) {
            addCriterion("present_price >", value, "presentPrice");
            return (Criteria) this;
        }

        public Criteria andPresentPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("present_price >=", value, "presentPrice");
            return (Criteria) this;
        }

        public Criteria andPresentPriceLessThan(Double value) {
            addCriterion("present_price <", value, "presentPrice");
            return (Criteria) this;
        }

        public Criteria andPresentPriceLessThanOrEqualTo(Double value) {
            addCriterion("present_price <=", value, "presentPrice");
            return (Criteria) this;
        }

        public Criteria andPresentPriceIn(List<Double> values) {
            addCriterion("present_price in", values, "presentPrice");
            return (Criteria) this;
        }

        public Criteria andPresentPriceNotIn(List<Double> values) {
            addCriterion("present_price not in", values, "presentPrice");
            return (Criteria) this;
        }

        public Criteria andPresentPriceBetween(Double value1, Double value2) {
            addCriterion("present_price between", value1, value2, "presentPrice");
            return (Criteria) this;
        }

        public Criteria andPresentPriceNotBetween(Double value1, Double value2) {
            addCriterion("present_price not between", value1, value2, "presentPrice");
            return (Criteria) this;
        }

        public Criteria andMetalStatusIsNull() {
            addCriterion("metal_status is null");
            return (Criteria) this;
        }

        public Criteria andMetalStatusIsNotNull() {
            addCriterion("metal_status is not null");
            return (Criteria) this;
        }

        public Criteria andMetalStatusEqualTo(Integer value) {
            addCriterion("metal_status =", value, "metalStatus");
            return (Criteria) this;
        }

        public Criteria andMetalStatusNotEqualTo(Integer value) {
            addCriterion("metal_status <>", value, "metalStatus");
            return (Criteria) this;
        }

        public Criteria andMetalStatusGreaterThan(Integer value) {
            addCriterion("metal_status >", value, "metalStatus");
            return (Criteria) this;
        }

        public Criteria andMetalStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("metal_status >=", value, "metalStatus");
            return (Criteria) this;
        }

        public Criteria andMetalStatusLessThan(Integer value) {
            addCriterion("metal_status <", value, "metalStatus");
            return (Criteria) this;
        }

        public Criteria andMetalStatusLessThanOrEqualTo(Integer value) {
            addCriterion("metal_status <=", value, "metalStatus");
            return (Criteria) this;
        }

        public Criteria andMetalStatusIn(List<Integer> values) {
            addCriterion("metal_status in", values, "metalStatus");
            return (Criteria) this;
        }

        public Criteria andMetalStatusNotIn(List<Integer> values) {
            addCriterion("metal_status not in", values, "metalStatus");
            return (Criteria) this;
        }

        public Criteria andMetalStatusBetween(Integer value1, Integer value2) {
            addCriterion("metal_status between", value1, value2, "metalStatus");
            return (Criteria) this;
        }

        public Criteria andMetalStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("metal_status not between", value1, value2, "metalStatus");
            return (Criteria) this;
        }

        public Criteria andFluctuationIsNull() {
            addCriterion("fluctuation is null");
            return (Criteria) this;
        }

        public Criteria andFluctuationIsNotNull() {
            addCriterion("fluctuation is not null");
            return (Criteria) this;
        }

        public Criteria andFluctuationEqualTo(Double value) {
            addCriterion("fluctuation =", value, "fluctuation");
            return (Criteria) this;
        }

        public Criteria andFluctuationNotEqualTo(Double value) {
            addCriterion("fluctuation <>", value, "fluctuation");
            return (Criteria) this;
        }

        public Criteria andFluctuationGreaterThan(Double value) {
            addCriterion("fluctuation >", value, "fluctuation");
            return (Criteria) this;
        }

        public Criteria andFluctuationGreaterThanOrEqualTo(Double value) {
            addCriterion("fluctuation >=", value, "fluctuation");
            return (Criteria) this;
        }

        public Criteria andFluctuationLessThan(Double value) {
            addCriterion("fluctuation <", value, "fluctuation");
            return (Criteria) this;
        }

        public Criteria andFluctuationLessThanOrEqualTo(Double value) {
            addCriterion("fluctuation <=", value, "fluctuation");
            return (Criteria) this;
        }

        public Criteria andFluctuationIn(List<Double> values) {
            addCriterion("fluctuation in", values, "fluctuation");
            return (Criteria) this;
        }

        public Criteria andFluctuationNotIn(List<Double> values) {
            addCriterion("fluctuation not in", values, "fluctuation");
            return (Criteria) this;
        }

        public Criteria andFluctuationBetween(Double value1, Double value2) {
            addCriterion("fluctuation between", value1, value2, "fluctuation");
            return (Criteria) this;
        }

        public Criteria andFluctuationNotBetween(Double value1, Double value2) {
            addCriterion("fluctuation not between", value1, value2, "fluctuation");
            return (Criteria) this;
        }

        public Criteria andDealNumberIsNull() {
            addCriterion("deal_number is null");
            return (Criteria) this;
        }

        public Criteria andDealNumberIsNotNull() {
            addCriterion("deal_number is not null");
            return (Criteria) this;
        }

        public Criteria andDealNumberEqualTo(Long value) {
            addCriterion("deal_number =", value, "dealNumber");
            return (Criteria) this;
        }

        public Criteria andDealNumberNotEqualTo(Long value) {
            addCriterion("deal_number <>", value, "dealNumber");
            return (Criteria) this;
        }

        public Criteria andDealNumberGreaterThan(Long value) {
            addCriterion("deal_number >", value, "dealNumber");
            return (Criteria) this;
        }

        public Criteria andDealNumberGreaterThanOrEqualTo(Long value) {
            addCriterion("deal_number >=", value, "dealNumber");
            return (Criteria) this;
        }

        public Criteria andDealNumberLessThan(Long value) {
            addCriterion("deal_number <", value, "dealNumber");
            return (Criteria) this;
        }

        public Criteria andDealNumberLessThanOrEqualTo(Long value) {
            addCriterion("deal_number <=", value, "dealNumber");
            return (Criteria) this;
        }

        public Criteria andDealNumberIn(List<Long> values) {
            addCriterion("deal_number in", values, "dealNumber");
            return (Criteria) this;
        }

        public Criteria andDealNumberNotIn(List<Long> values) {
            addCriterion("deal_number not in", values, "dealNumber");
            return (Criteria) this;
        }

        public Criteria andDealNumberBetween(Long value1, Long value2) {
            addCriterion("deal_number between", value1, value2, "dealNumber");
            return (Criteria) this;
        }

        public Criteria andDealNumberNotBetween(Long value1, Long value2) {
            addCriterion("deal_number not between", value1, value2, "dealNumber");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceIsNull() {
            addCriterion("opening_price is null");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceIsNotNull() {
            addCriterion("opening_price is not null");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceEqualTo(Double value) {
            addCriterion("opening_price =", value, "openingPrice");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceNotEqualTo(Double value) {
            addCriterion("opening_price <>", value, "openingPrice");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceGreaterThan(Double value) {
            addCriterion("opening_price >", value, "openingPrice");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("opening_price >=", value, "openingPrice");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceLessThan(Double value) {
            addCriterion("opening_price <", value, "openingPrice");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceLessThanOrEqualTo(Double value) {
            addCriterion("opening_price <=", value, "openingPrice");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceIn(List<Double> values) {
            addCriterion("opening_price in", values, "openingPrice");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceNotIn(List<Double> values) {
            addCriterion("opening_price not in", values, "openingPrice");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceBetween(Double value1, Double value2) {
            addCriterion("opening_price between", value1, value2, "openingPrice");
            return (Criteria) this;
        }

        public Criteria andOpeningPriceNotBetween(Double value1, Double value2) {
            addCriterion("opening_price not between", value1, value2, "openingPrice");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceIsNull() {
            addCriterion("yesterday_price is null");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceIsNotNull() {
            addCriterion("yesterday_price is not null");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceEqualTo(Double value) {
            addCriterion("yesterday_price =", value, "yesterdayPrice");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceNotEqualTo(Double value) {
            addCriterion("yesterday_price <>", value, "yesterdayPrice");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceGreaterThan(Double value) {
            addCriterion("yesterday_price >", value, "yesterdayPrice");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("yesterday_price >=", value, "yesterdayPrice");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceLessThan(Double value) {
            addCriterion("yesterday_price <", value, "yesterdayPrice");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceLessThanOrEqualTo(Double value) {
            addCriterion("yesterday_price <=", value, "yesterdayPrice");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceIn(List<Double> values) {
            addCriterion("yesterday_price in", values, "yesterdayPrice");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceNotIn(List<Double> values) {
            addCriterion("yesterday_price not in", values, "yesterdayPrice");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceBetween(Double value1, Double value2) {
            addCriterion("yesterday_price between", value1, value2, "yesterdayPrice");
            return (Criteria) this;
        }

        public Criteria andYesterdayPriceNotBetween(Double value1, Double value2) {
            addCriterion("yesterday_price not between", value1, value2, "yesterdayPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceIsNull() {
            addCriterion("max_price is null");
            return (Criteria) this;
        }

        public Criteria andMaxPriceIsNotNull() {
            addCriterion("max_price is not null");
            return (Criteria) this;
        }

        public Criteria andMaxPriceEqualTo(Double value) {
            addCriterion("max_price =", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceNotEqualTo(Double value) {
            addCriterion("max_price <>", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceGreaterThan(Double value) {
            addCriterion("max_price >", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("max_price >=", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceLessThan(Double value) {
            addCriterion("max_price <", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceLessThanOrEqualTo(Double value) {
            addCriterion("max_price <=", value, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceIn(List<Double> values) {
            addCriterion("max_price in", values, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceNotIn(List<Double> values) {
            addCriterion("max_price not in", values, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceBetween(Double value1, Double value2) {
            addCriterion("max_price between", value1, value2, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMaxPriceNotBetween(Double value1, Double value2) {
            addCriterion("max_price not between", value1, value2, "maxPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceIsNull() {
            addCriterion("min_price is null");
            return (Criteria) this;
        }

        public Criteria andMinPriceIsNotNull() {
            addCriterion("min_price is not null");
            return (Criteria) this;
        }

        public Criteria andMinPriceEqualTo(Double value) {
            addCriterion("min_price =", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceNotEqualTo(Double value) {
            addCriterion("min_price <>", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceGreaterThan(Double value) {
            addCriterion("min_price >", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("min_price >=", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceLessThan(Double value) {
            addCriterion("min_price <", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceLessThanOrEqualTo(Double value) {
            addCriterion("min_price <=", value, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceIn(List<Double> values) {
            addCriterion("min_price in", values, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceNotIn(List<Double> values) {
            addCriterion("min_price not in", values, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceBetween(Double value1, Double value2) {
            addCriterion("min_price between", value1, value2, "minPrice");
            return (Criteria) this;
        }

        public Criteria andMinPriceNotBetween(Double value1, Double value2) {
            addCriterion("min_price not between", value1, value2, "minPrice");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdIsNull() {
            addCriterion("poxy_user_id is null");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdIsNotNull() {
            addCriterion("poxy_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdEqualTo(Integer value) {
            addCriterion("poxy_user_id =", value, "poxyUserId");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdNotEqualTo(Integer value) {
            addCriterion("poxy_user_id <>", value, "poxyUserId");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdGreaterThan(Integer value) {
            addCriterion("poxy_user_id >", value, "poxyUserId");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("poxy_user_id >=", value, "poxyUserId");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdLessThan(Integer value) {
            addCriterion("poxy_user_id <", value, "poxyUserId");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("poxy_user_id <=", value, "poxyUserId");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdIn(List<Integer> values) {
            addCriterion("poxy_user_id in", values, "poxyUserId");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdNotIn(List<Integer> values) {
            addCriterion("poxy_user_id not in", values, "poxyUserId");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdBetween(Integer value1, Integer value2) {
            addCriterion("poxy_user_id between", value1, value2, "poxyUserId");
            return (Criteria) this;
        }

        public Criteria andPoxyUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("poxy_user_id not between", value1, value2, "poxyUserId");
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