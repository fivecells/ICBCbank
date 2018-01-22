package com.bank.po;

import java.util.ArrayList;
import java.util.List;

public class FundExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public FundExample() {
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

        public Criteria andFundIdIsNull() {
            addCriterion("fund_id is null");
            return (Criteria) this;
        }

        public Criteria andFundIdIsNotNull() {
            addCriterion("fund_id is not null");
            return (Criteria) this;
        }

        public Criteria andFundIdEqualTo(Integer value) {
            addCriterion("fund_id =", value, "fundId");
            return (Criteria) this;
        }

        public Criteria andFundIdNotEqualTo(Integer value) {
            addCriterion("fund_id <>", value, "fundId");
            return (Criteria) this;
        }

        public Criteria andFundIdGreaterThan(Integer value) {
            addCriterion("fund_id >", value, "fundId");
            return (Criteria) this;
        }

        public Criteria andFundIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("fund_id >=", value, "fundId");
            return (Criteria) this;
        }

        public Criteria andFundIdLessThan(Integer value) {
            addCriterion("fund_id <", value, "fundId");
            return (Criteria) this;
        }

        public Criteria andFundIdLessThanOrEqualTo(Integer value) {
            addCriterion("fund_id <=", value, "fundId");
            return (Criteria) this;
        }

        public Criteria andFundIdIn(List<Integer> values) {
            addCriterion("fund_id in", values, "fundId");
            return (Criteria) this;
        }

        public Criteria andFundIdNotIn(List<Integer> values) {
            addCriterion("fund_id not in", values, "fundId");
            return (Criteria) this;
        }

        public Criteria andFundIdBetween(Integer value1, Integer value2) {
            addCriterion("fund_id between", value1, value2, "fundId");
            return (Criteria) this;
        }

        public Criteria andFundIdNotBetween(Integer value1, Integer value2) {
            addCriterion("fund_id not between", value1, value2, "fundId");
            return (Criteria) this;
        }

        public Criteria andFundCodeIsNull() {
            addCriterion("fund_code is null");
            return (Criteria) this;
        }

        public Criteria andFundCodeIsNotNull() {
            addCriterion("fund_code is not null");
            return (Criteria) this;
        }

        public Criteria andFundCodeEqualTo(Long value) {
            addCriterion("fund_code =", value, "fundCode");
            return (Criteria) this;
        }

        public Criteria andFundCodeNotEqualTo(Long value) {
            addCriterion("fund_code <>", value, "fundCode");
            return (Criteria) this;
        }

        public Criteria andFundCodeGreaterThan(Long value) {
            addCriterion("fund_code >", value, "fundCode");
            return (Criteria) this;
        }

        public Criteria andFundCodeGreaterThanOrEqualTo(Long value) {
            addCriterion("fund_code >=", value, "fundCode");
            return (Criteria) this;
        }

        public Criteria andFundCodeLessThan(Long value) {
            addCriterion("fund_code <", value, "fundCode");
            return (Criteria) this;
        }

        public Criteria andFundCodeLessThanOrEqualTo(Long value) {
            addCriterion("fund_code <=", value, "fundCode");
            return (Criteria) this;
        }

        public Criteria andFundCodeIn(List<Long> values) {
            addCriterion("fund_code in", values, "fundCode");
            return (Criteria) this;
        }

        public Criteria andFundCodeNotIn(List<Long> values) {
            addCriterion("fund_code not in", values, "fundCode");
            return (Criteria) this;
        }

        public Criteria andFundCodeBetween(Long value1, Long value2) {
            addCriterion("fund_code between", value1, value2, "fundCode");
            return (Criteria) this;
        }

        public Criteria andFundCodeNotBetween(Long value1, Long value2) {
            addCriterion("fund_code not between", value1, value2, "fundCode");
            return (Criteria) this;
        }

        public Criteria andFundNameIsNull() {
            addCriterion("fund_name is null");
            return (Criteria) this;
        }

        public Criteria andFundNameIsNotNull() {
            addCriterion("fund_name is not null");
            return (Criteria) this;
        }

        public Criteria andFundNameEqualTo(String value) {
            addCriterion("fund_name =", value, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameNotEqualTo(String value) {
            addCriterion("fund_name <>", value, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameGreaterThan(String value) {
            addCriterion("fund_name >", value, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameGreaterThanOrEqualTo(String value) {
            addCriterion("fund_name >=", value, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameLessThan(String value) {
            addCriterion("fund_name <", value, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameLessThanOrEqualTo(String value) {
            addCriterion("fund_name <=", value, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameLike(String value) {
            addCriterion("fund_name like", value, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameNotLike(String value) {
            addCriterion("fund_name not like", value, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameIn(List<String> values) {
            addCriterion("fund_name in", values, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameNotIn(List<String> values) {
            addCriterion("fund_name not in", values, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameBetween(String value1, String value2) {
            addCriterion("fund_name between", value1, value2, "fundName");
            return (Criteria) this;
        }

        public Criteria andFundNameNotBetween(String value1, String value2) {
            addCriterion("fund_name not between", value1, value2, "fundName");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeIsNull() {
            addCriterion("currency_type is null");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeIsNotNull() {
            addCriterion("currency_type is not null");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeEqualTo(Integer value) {
            addCriterion("currency_type =", value, "currencyType");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeNotEqualTo(Integer value) {
            addCriterion("currency_type <>", value, "currencyType");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeGreaterThan(Integer value) {
            addCriterion("currency_type >", value, "currencyType");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("currency_type >=", value, "currencyType");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeLessThan(Integer value) {
            addCriterion("currency_type <", value, "currencyType");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeLessThanOrEqualTo(Integer value) {
            addCriterion("currency_type <=", value, "currencyType");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeIn(List<Integer> values) {
            addCriterion("currency_type in", values, "currencyType");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeNotIn(List<Integer> values) {
            addCriterion("currency_type not in", values, "currencyType");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeBetween(Integer value1, Integer value2) {
            addCriterion("currency_type between", value1, value2, "currencyType");
            return (Criteria) this;
        }

        public Criteria andCurrencyTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("currency_type not between", value1, value2, "currencyType");
            return (Criteria) this;
        }

        public Criteria andFundTypeIsNull() {
            addCriterion("fund_type is null");
            return (Criteria) this;
        }

        public Criteria andFundTypeIsNotNull() {
            addCriterion("fund_type is not null");
            return (Criteria) this;
        }

        public Criteria andFundTypeEqualTo(Integer value) {
            addCriterion("fund_type =", value, "fundType");
            return (Criteria) this;
        }

        public Criteria andFundTypeNotEqualTo(Integer value) {
            addCriterion("fund_type <>", value, "fundType");
            return (Criteria) this;
        }

        public Criteria andFundTypeGreaterThan(Integer value) {
            addCriterion("fund_type >", value, "fundType");
            return (Criteria) this;
        }

        public Criteria andFundTypeGreaterThanOrEqualTo(Integer value) {
            addCriterion("fund_type >=", value, "fundType");
            return (Criteria) this;
        }

        public Criteria andFundTypeLessThan(Integer value) {
            addCriterion("fund_type <", value, "fundType");
            return (Criteria) this;
        }

        public Criteria andFundTypeLessThanOrEqualTo(Integer value) {
            addCriterion("fund_type <=", value, "fundType");
            return (Criteria) this;
        }

        public Criteria andFundTypeIn(List<Integer> values) {
            addCriterion("fund_type in", values, "fundType");
            return (Criteria) this;
        }

        public Criteria andFundTypeNotIn(List<Integer> values) {
            addCriterion("fund_type not in", values, "fundType");
            return (Criteria) this;
        }

        public Criteria andFundTypeBetween(Integer value1, Integer value2) {
            addCriterion("fund_type between", value1, value2, "fundType");
            return (Criteria) this;
        }

        public Criteria andFundTypeNotBetween(Integer value1, Integer value2) {
            addCriterion("fund_type not between", value1, value2, "fundType");
            return (Criteria) this;
        }

        public Criteria andFundStyleIsNull() {
            addCriterion("fund_style is null");
            return (Criteria) this;
        }

        public Criteria andFundStyleIsNotNull() {
            addCriterion("fund_style is not null");
            return (Criteria) this;
        }

        public Criteria andFundStyleEqualTo(Integer value) {
            addCriterion("fund_style =", value, "fundStyle");
            return (Criteria) this;
        }

        public Criteria andFundStyleNotEqualTo(Integer value) {
            addCriterion("fund_style <>", value, "fundStyle");
            return (Criteria) this;
        }

        public Criteria andFundStyleGreaterThan(Integer value) {
            addCriterion("fund_style >", value, "fundStyle");
            return (Criteria) this;
        }

        public Criteria andFundStyleGreaterThanOrEqualTo(Integer value) {
            addCriterion("fund_style >=", value, "fundStyle");
            return (Criteria) this;
        }

        public Criteria andFundStyleLessThan(Integer value) {
            addCriterion("fund_style <", value, "fundStyle");
            return (Criteria) this;
        }

        public Criteria andFundStyleLessThanOrEqualTo(Integer value) {
            addCriterion("fund_style <=", value, "fundStyle");
            return (Criteria) this;
        }

        public Criteria andFundStyleIn(List<Integer> values) {
            addCriterion("fund_style in", values, "fundStyle");
            return (Criteria) this;
        }

        public Criteria andFundStyleNotIn(List<Integer> values) {
            addCriterion("fund_style not in", values, "fundStyle");
            return (Criteria) this;
        }

        public Criteria andFundStyleBetween(Integer value1, Integer value2) {
            addCriterion("fund_style between", value1, value2, "fundStyle");
            return (Criteria) this;
        }

        public Criteria andFundStyleNotBetween(Integer value1, Integer value2) {
            addCriterion("fund_style not between", value1, value2, "fundStyle");
            return (Criteria) this;
        }

        public Criteria andIssueDateIsNull() {
            addCriterion("issue_date is null");
            return (Criteria) this;
        }

        public Criteria andIssueDateIsNotNull() {
            addCriterion("issue_date is not null");
            return (Criteria) this;
        }

        public Criteria andIssueDateEqualTo(String value) {
            addCriterion("issue_date =", value, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateNotEqualTo(String value) {
            addCriterion("issue_date <>", value, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateGreaterThan(String value) {
            addCriterion("issue_date >", value, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateGreaterThanOrEqualTo(String value) {
            addCriterion("issue_date >=", value, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateLessThan(String value) {
            addCriterion("issue_date <", value, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateLessThanOrEqualTo(String value) {
            addCriterion("issue_date <=", value, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateLike(String value) {
            addCriterion("issue_date like", value, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateNotLike(String value) {
            addCriterion("issue_date not like", value, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateIn(List<String> values) {
            addCriterion("issue_date in", values, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateNotIn(List<String> values) {
            addCriterion("issue_date not in", values, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateBetween(String value1, String value2) {
            addCriterion("issue_date between", value1, value2, "issueDate");
            return (Criteria) this;
        }

        public Criteria andIssueDateNotBetween(String value1, String value2) {
            addCriterion("issue_date not between", value1, value2, "issueDate");
            return (Criteria) this;
        }

        public Criteria andUnitPriceIsNull() {
            addCriterion("unit_price is null");
            return (Criteria) this;
        }

        public Criteria andUnitPriceIsNotNull() {
            addCriterion("unit_price is not null");
            return (Criteria) this;
        }

        public Criteria andUnitPriceEqualTo(Double value) {
            addCriterion("unit_price =", value, "unitPrice");
            return (Criteria) this;
        }

        public Criteria andUnitPriceNotEqualTo(Double value) {
            addCriterion("unit_price <>", value, "unitPrice");
            return (Criteria) this;
        }

        public Criteria andUnitPriceGreaterThan(Double value) {
            addCriterion("unit_price >", value, "unitPrice");
            return (Criteria) this;
        }

        public Criteria andUnitPriceGreaterThanOrEqualTo(Double value) {
            addCriterion("unit_price >=", value, "unitPrice");
            return (Criteria) this;
        }

        public Criteria andUnitPriceLessThan(Double value) {
            addCriterion("unit_price <", value, "unitPrice");
            return (Criteria) this;
        }

        public Criteria andUnitPriceLessThanOrEqualTo(Double value) {
            addCriterion("unit_price <=", value, "unitPrice");
            return (Criteria) this;
        }

        public Criteria andUnitPriceIn(List<Double> values) {
            addCriterion("unit_price in", values, "unitPrice");
            return (Criteria) this;
        }

        public Criteria andUnitPriceNotIn(List<Double> values) {
            addCriterion("unit_price not in", values, "unitPrice");
            return (Criteria) this;
        }

        public Criteria andUnitPriceBetween(Double value1, Double value2) {
            addCriterion("unit_price between", value1, value2, "unitPrice");
            return (Criteria) this;
        }

        public Criteria andUnitPriceNotBetween(Double value1, Double value2) {
            addCriterion("unit_price not between", value1, value2, "unitPrice");
            return (Criteria) this;
        }

        public Criteria andFundUserIdIsNull() {
            addCriterion("fund_user_id is null");
            return (Criteria) this;
        }

        public Criteria andFundUserIdIsNotNull() {
            addCriterion("fund_user_id is not null");
            return (Criteria) this;
        }

        public Criteria andFundUserIdEqualTo(Integer value) {
            addCriterion("fund_user_id =", value, "fundUserId");
            return (Criteria) this;
        }

        public Criteria andFundUserIdNotEqualTo(Integer value) {
            addCriterion("fund_user_id <>", value, "fundUserId");
            return (Criteria) this;
        }

        public Criteria andFundUserIdGreaterThan(Integer value) {
            addCriterion("fund_user_id >", value, "fundUserId");
            return (Criteria) this;
        }

        public Criteria andFundUserIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("fund_user_id >=", value, "fundUserId");
            return (Criteria) this;
        }

        public Criteria andFundUserIdLessThan(Integer value) {
            addCriterion("fund_user_id <", value, "fundUserId");
            return (Criteria) this;
        }

        public Criteria andFundUserIdLessThanOrEqualTo(Integer value) {
            addCriterion("fund_user_id <=", value, "fundUserId");
            return (Criteria) this;
        }

        public Criteria andFundUserIdIn(List<Integer> values) {
            addCriterion("fund_user_id in", values, "fundUserId");
            return (Criteria) this;
        }

        public Criteria andFundUserIdNotIn(List<Integer> values) {
            addCriterion("fund_user_id not in", values, "fundUserId");
            return (Criteria) this;
        }

        public Criteria andFundUserIdBetween(Integer value1, Integer value2) {
            addCriterion("fund_user_id between", value1, value2, "fundUserId");
            return (Criteria) this;
        }

        public Criteria andFundUserIdNotBetween(Integer value1, Integer value2) {
            addCriterion("fund_user_id not between", value1, value2, "fundUserId");
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