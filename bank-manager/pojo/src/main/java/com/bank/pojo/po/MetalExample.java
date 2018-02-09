package com.bank.pojo.po;

import java.util.ArrayList;
import java.util.List;

public class MetalExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public MetalExample() {
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

        public Criteria andBuyPriceIsNull() {
            addCriterion("buy_price is null");
            return (Criteria) this;
        }

        public Criteria andBuyPriceIsNotNull() {
            addCriterion("buy_price is not null");
            return (Criteria) this;
        }

        public Criteria andBuyPriceEqualTo(Double value) {
            addCriterion("buy_price =", value, "buyPrice");
            return (Criteria) this;
        }

        public Criteria andBuyPriceNotEqualTo(Double value) {
            addCriterion("buy_price <>", value, "buyPrice");
            return (Criteria) this;
        }

        public Criteria andBuyPriceGreaterThan(Double value) {
            addCriterion("buy_price >", value, "buyPrice");
            return (Criteria) this;
        }

        public Criteria andBuyPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("buy_price >=", value, "buyPrice");
            return (Criteria) this;
        }

        public Criteria andBuyPriceLessThan(Double value) {
            addCriterion("buy_price <", value, "buyPrice");
            return (Criteria) this;
        }

        public Criteria andBuyPriceLessThanOrEqualTo(Double value) {
            addCriterion("buy_price <=", value, "buyPrice");
            return (Criteria) this;
        }

        public Criteria andBuyPriceIn(List<Double> values) {
            addCriterion("buy_price in", values, "buyPrice");
            return (Criteria) this;
        }

        public Criteria andBuyPriceNotIn(List<Double> values) {
            addCriterion("buy_price not in", values, "buyPrice");
            return (Criteria) this;
        }

        public Criteria andBuyPriceBetween(Double value1, Double value2) {
            addCriterion("buy_price between", value1, value2, "buyPrice");
            return (Criteria) this;
        }

        public Criteria andBuyPriceNotBetween(Double value1, Double value2) {
            addCriterion("buy_price not between", value1, value2, "buyPrice");
            return (Criteria) this;
        }

        public Criteria andSellPriceIsNull() {
            addCriterion("sell_price is null");
            return (Criteria) this;
        }

        public Criteria andSellPriceIsNotNull() {
            addCriterion("sell_price is not null");
            return (Criteria) this;
        }

        public Criteria andSellPriceEqualTo(Double value) {
            addCriterion("sell_price =", value, "sellPrice");
            return (Criteria) this;
        }

        public Criteria andSellPriceNotEqualTo(Double value) {
            addCriterion("sell_price <>", value, "sellPrice");
            return (Criteria) this;
        }

        public Criteria andSellPriceGreaterThan(Double value) {
            addCriterion("sell_price >", value, "sellPrice");
            return (Criteria) this;
        }

        public Criteria andSellPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("sell_price >=", value, "sellPrice");
            return (Criteria) this;
        }

        public Criteria andSellPriceLessThan(Double value) {
            addCriterion("sell_price <", value, "sellPrice");
            return (Criteria) this;
        }

        public Criteria andSellPriceLessThanOrEqualTo(Double value) {
            addCriterion("sell_price <=", value, "sellPrice");
            return (Criteria) this;
        }

        public Criteria andSellPriceIn(List<Double> values) {
            addCriterion("sell_price in", values, "sellPrice");
            return (Criteria) this;
        }

        public Criteria andSellPriceNotIn(List<Double> values) {
            addCriterion("sell_price not in", values, "sellPrice");
            return (Criteria) this;
        }

        public Criteria andSellPriceBetween(Double value1, Double value2) {
            addCriterion("sell_price between", value1, value2, "sellPrice");
            return (Criteria) this;
        }

        public Criteria andSellPriceNotBetween(Double value1, Double value2) {
            addCriterion("sell_price not between", value1, value2, "sellPrice");
            return (Criteria) this;
        }

        public Criteria andPriceAvgIsNull() {
            addCriterion("price_avg is null");
            return (Criteria) this;
        }

        public Criteria andPriceAvgIsNotNull() {
            addCriterion("price_avg is not null");
            return (Criteria) this;
        }

        public Criteria andPriceAvgEqualTo(Double value) {
            addCriterion("price_avg =", value, "priceAvg");
            return (Criteria) this;
        }

        public Criteria andPriceAvgNotEqualTo(Double value) {
            addCriterion("price_avg <>", value, "priceAvg");
            return (Criteria) this;
        }

        public Criteria andPriceAvgGreaterThan(Double value) {
            addCriterion("price_avg >", value, "priceAvg");
            return (Criteria) this;
        }

        public Criteria andPriceAvgGreaterThanOrEqualTo(Double value) {
            addCriterion("price_avg >=", value, "priceAvg");
            return (Criteria) this;
        }

        public Criteria andPriceAvgLessThan(Double value) {
            addCriterion("price_avg <", value, "priceAvg");
            return (Criteria) this;
        }

        public Criteria andPriceAvgLessThanOrEqualTo(Double value) {
            addCriterion("price_avg <=", value, "priceAvg");
            return (Criteria) this;
        }

        public Criteria andPriceAvgIn(List<Double> values) {
            addCriterion("price_avg in", values, "priceAvg");
            return (Criteria) this;
        }

        public Criteria andPriceAvgNotIn(List<Double> values) {
            addCriterion("price_avg not in", values, "priceAvg");
            return (Criteria) this;
        }

        public Criteria andPriceAvgBetween(Double value1, Double value2) {
            addCriterion("price_avg between", value1, value2, "priceAvg");
            return (Criteria) this;
        }

        public Criteria andPriceAvgNotBetween(Double value1, Double value2) {
            addCriterion("price_avg not between", value1, value2, "priceAvg");
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

        public Criteria andFluPerDayIsNull() {
            addCriterion("flu_per_day is null");
            return (Criteria) this;
        }

        public Criteria andFluPerDayIsNotNull() {
            addCriterion("flu_per_day is not null");
            return (Criteria) this;
        }

        public Criteria andFluPerDayEqualTo(Double value) {
            addCriterion("flu_per_day =", value, "fluPerDay");
            return (Criteria) this;
        }

        public Criteria andFluPerDayNotEqualTo(Double value) {
            addCriterion("flu_per_day <>", value, "fluPerDay");
            return (Criteria) this;
        }

        public Criteria andFluPerDayGreaterThan(Double value) {
            addCriterion("flu_per_day >", value, "fluPerDay");
            return (Criteria) this;
        }

        public Criteria andFluPerDayGreaterThanOrEqualTo(Double value) {
            addCriterion("flu_per_day >=", value, "fluPerDay");
            return (Criteria) this;
        }

        public Criteria andFluPerDayLessThan(Double value) {
            addCriterion("flu_per_day <", value, "fluPerDay");
            return (Criteria) this;
        }

        public Criteria andFluPerDayLessThanOrEqualTo(Double value) {
            addCriterion("flu_per_day <=", value, "fluPerDay");
            return (Criteria) this;
        }

        public Criteria andFluPerDayIn(List<Double> values) {
            addCriterion("flu_per_day in", values, "fluPerDay");
            return (Criteria) this;
        }

        public Criteria andFluPerDayNotIn(List<Double> values) {
            addCriterion("flu_per_day not in", values, "fluPerDay");
            return (Criteria) this;
        }

        public Criteria andFluPerDayBetween(Double value1, Double value2) {
            addCriterion("flu_per_day between", value1, value2, "fluPerDay");
            return (Criteria) this;
        }

        public Criteria andFluPerDayNotBetween(Double value1, Double value2) {
            addCriterion("flu_per_day not between", value1, value2, "fluPerDay");
            return (Criteria) this;
        }

        public Criteria andFluPerYearIsNull() {
            addCriterion("flu_per_year is null");
            return (Criteria) this;
        }

        public Criteria andFluPerYearIsNotNull() {
            addCriterion("flu_per_year is not null");
            return (Criteria) this;
        }

        public Criteria andFluPerYearEqualTo(Double value) {
            addCriterion("flu_per_year =", value, "fluPerYear");
            return (Criteria) this;
        }

        public Criteria andFluPerYearNotEqualTo(Double value) {
            addCriterion("flu_per_year <>", value, "fluPerYear");
            return (Criteria) this;
        }

        public Criteria andFluPerYearGreaterThan(Double value) {
            addCriterion("flu_per_year >", value, "fluPerYear");
            return (Criteria) this;
        }

        public Criteria andFluPerYearGreaterThanOrEqualTo(Double value) {
            addCriterion("flu_per_year >=", value, "fluPerYear");
            return (Criteria) this;
        }

        public Criteria andFluPerYearLessThan(Double value) {
            addCriterion("flu_per_year <", value, "fluPerYear");
            return (Criteria) this;
        }

        public Criteria andFluPerYearLessThanOrEqualTo(Double value) {
            addCriterion("flu_per_year <=", value, "fluPerYear");
            return (Criteria) this;
        }

        public Criteria andFluPerYearIn(List<Double> values) {
            addCriterion("flu_per_year in", values, "fluPerYear");
            return (Criteria) this;
        }

        public Criteria andFluPerYearNotIn(List<Double> values) {
            addCriterion("flu_per_year not in", values, "fluPerYear");
            return (Criteria) this;
        }

        public Criteria andFluPerYearBetween(Double value1, Double value2) {
            addCriterion("flu_per_year between", value1, value2, "fluPerYear");
            return (Criteria) this;
        }

        public Criteria andFluPerYearNotBetween(Double value1, Double value2) {
            addCriterion("flu_per_year not between", value1, value2, "fluPerYear");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdIsNull() {
            addCriterion("metal_user_id is null");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdIsNotNull() {
            addCriterion("metal_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdEqualTo(Integer value) {
            addCriterion("metal_user_id =", value, "metalUserId");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdNotEqualTo(Integer value) {
            addCriterion("metal_user_id <>", value, "metalUserId");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdGreaterThan(Integer value) {
            addCriterion("metal_user_id >", value, "metalUserId");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("metal_user_id >=", value, "metalUserId");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdLessThan(Integer value) {
            addCriterion("metal_user_id <", value, "metalUserId");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("metal_user_id <=", value, "metalUserId");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdIn(List<Integer> values) {
            addCriterion("metal_user_id in", values, "metalUserId");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdNotIn(List<Integer> values) {
            addCriterion("metal_user_id not in", values, "metalUserId");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdBetween(Integer value1, Integer value2) {
            addCriterion("metal_user_id between", value1, value2, "metalUserId");
            return (Criteria) this;
        }

        public Criteria andMetalUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("metal_user_id not between", value1, value2, "metalUserId");
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