package com.bank.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class TransferdetailExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public TransferdetailExample() {
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

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andAcceptNameIsNull() {
            addCriterion("accept_name is null");
            return (Criteria) this;
        }

        public Criteria andAcceptNameIsNotNull() {
            addCriterion("accept_name is not null");
            return (Criteria) this;
        }

        public Criteria andAcceptNameEqualTo(String value) {
            addCriterion("accept_name =", value, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameNotEqualTo(String value) {
            addCriterion("accept_name <>", value, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameGreaterThan(String value) {
            addCriterion("accept_name >", value, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameGreaterThanOrEqualTo(String value) {
            addCriterion("accept_name >=", value, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameLessThan(String value) {
            addCriterion("accept_name <", value, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameLessThanOrEqualTo(String value) {
            addCriterion("accept_name <=", value, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameLike(String value) {
            addCriterion("accept_name like", value, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameNotLike(String value) {
            addCriterion("accept_name not like", value, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameIn(List<String> values) {
            addCriterion("accept_name in", values, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameNotIn(List<String> values) {
            addCriterion("accept_name not in", values, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameBetween(String value1, String value2) {
            addCriterion("accept_name between", value1, value2, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptNameNotBetween(String value1, String value2) {
            addCriterion("accept_name not between", value1, value2, "acceptName");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountIsNull() {
            addCriterion("accept_account is null");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountIsNotNull() {
            addCriterion("accept_account is not null");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountEqualTo(Integer value) {
            addCriterion("accept_account =", value, "acceptAccount");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountNotEqualTo(Integer value) {
            addCriterion("accept_account <>", value, "acceptAccount");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountGreaterThan(Integer value) {
            addCriterion("accept_account >", value, "acceptAccount");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountGreaterThanOrEqualTo(Integer value) {
            addCriterion("accept_account >=", value, "acceptAccount");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountLessThan(Integer value) {
            addCriterion("accept_account <", value, "acceptAccount");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountLessThanOrEqualTo(Integer value) {
            addCriterion("accept_account <=", value, "acceptAccount");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountIn(List<Integer> values) {
            addCriterion("accept_account in", values, "acceptAccount");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountNotIn(List<Integer> values) {
            addCriterion("accept_account not in", values, "acceptAccount");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountBetween(Integer value1, Integer value2) {
            addCriterion("accept_account between", value1, value2, "acceptAccount");
            return (Criteria) this;
        }

        public Criteria andAcceptAccountNotBetween(Integer value1, Integer value2) {
            addCriterion("accept_account not between", value1, value2, "acceptAccount");
            return (Criteria) this;
        }

        public Criteria andAcceptBankIsNull() {
            addCriterion("accept_bank is null");
            return (Criteria) this;
        }

        public Criteria andAcceptBankIsNotNull() {
            addCriterion("accept_bank is not null");
            return (Criteria) this;
        }

        public Criteria andAcceptBankEqualTo(String value) {
            addCriterion("accept_bank =", value, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankNotEqualTo(String value) {
            addCriterion("accept_bank <>", value, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankGreaterThan(String value) {
            addCriterion("accept_bank >", value, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankGreaterThanOrEqualTo(String value) {
            addCriterion("accept_bank >=", value, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankLessThan(String value) {
            addCriterion("accept_bank <", value, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankLessThanOrEqualTo(String value) {
            addCriterion("accept_bank <=", value, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankLike(String value) {
            addCriterion("accept_bank like", value, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankNotLike(String value) {
            addCriterion("accept_bank not like", value, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankIn(List<String> values) {
            addCriterion("accept_bank in", values, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankNotIn(List<String> values) {
            addCriterion("accept_bank not in", values, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankBetween(String value1, String value2) {
            addCriterion("accept_bank between", value1, value2, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andAcceptBankNotBetween(String value1, String value2) {
            addCriterion("accept_bank not between", value1, value2, "acceptBank");
            return (Criteria) this;
        }

        public Criteria andMoneyIsNull() {
            addCriterion("money is null");
            return (Criteria) this;
        }

        public Criteria andMoneyIsNotNull() {
            addCriterion("money is not null");
            return (Criteria) this;
        }

        public Criteria andMoneyEqualTo(Double value) {
            addCriterion("money =", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotEqualTo(Double value) {
            addCriterion("money <>", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyGreaterThan(Double value) {
            addCriterion("money >", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyGreaterThanOrEqualTo(Double value) {
            addCriterion("money >=", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLessThan(Double value) {
            addCriterion("money <", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyLessThanOrEqualTo(Double value) {
            addCriterion("money <=", value, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyIn(List<Double> values) {
            addCriterion("money in", values, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotIn(List<Double> values) {
            addCriterion("money not in", values, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyBetween(Double value1, Double value2) {
            addCriterion("money between", value1, value2, "money");
            return (Criteria) this;
        }

        public Criteria andMoneyNotBetween(Double value1, Double value2) {
            addCriterion("money not between", value1, value2, "money");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNull() {
            addCriterion("createtime is null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIsNotNull() {
            addCriterion("createtime is not null");
            return (Criteria) this;
        }

        public Criteria andCreatetimeEqualTo(Date value) {
            addCriterion("createtime =", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotEqualTo(Date value) {
            addCriterion("createtime <>", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThan(Date value) {
            addCriterion("createtime >", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("createtime >=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThan(Date value) {
            addCriterion("createtime <", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeLessThanOrEqualTo(Date value) {
            addCriterion("createtime <=", value, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeIn(List<Date> values) {
            addCriterion("createtime in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotIn(List<Date> values) {
            addCriterion("createtime not in", values, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeBetween(Date value1, Date value2) {
            addCriterion("createtime between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andCreatetimeNotBetween(Date value1, Date value2) {
            addCriterion("createtime not between", value1, value2, "createtime");
            return (Criteria) this;
        }

        public Criteria andPayAccountIsNull() {
            addCriterion("pay_account is null");
            return (Criteria) this;
        }

        public Criteria andPayAccountIsNotNull() {
            addCriterion("pay_account is not null");
            return (Criteria) this;
        }

        public Criteria andPayAccountEqualTo(Integer value) {
            addCriterion("pay_account =", value, "payAccount");
            return (Criteria) this;
        }

        public Criteria andPayAccountNotEqualTo(Integer value) {
            addCriterion("pay_account <>", value, "payAccount");
            return (Criteria) this;
        }

        public Criteria andPayAccountGreaterThan(Integer value) {
            addCriterion("pay_account >", value, "payAccount");
            return (Criteria) this;
        }

        public Criteria andPayAccountGreaterThanOrEqualTo(Integer value) {
            addCriterion("pay_account >=", value, "payAccount");
            return (Criteria) this;
        }

        public Criteria andPayAccountLessThan(Integer value) {
            addCriterion("pay_account <", value, "payAccount");
            return (Criteria) this;
        }

        public Criteria andPayAccountLessThanOrEqualTo(Integer value) {
            addCriterion("pay_account <=", value, "payAccount");
            return (Criteria) this;
        }

        public Criteria andPayAccountIn(List<Integer> values) {
            addCriterion("pay_account in", values, "payAccount");
            return (Criteria) this;
        }

        public Criteria andPayAccountNotIn(List<Integer> values) {
            addCriterion("pay_account not in", values, "payAccount");
            return (Criteria) this;
        }

        public Criteria andPayAccountBetween(Integer value1, Integer value2) {
            addCriterion("pay_account between", value1, value2, "payAccount");
            return (Criteria) this;
        }

        public Criteria andPayAccountNotBetween(Integer value1, Integer value2) {
            addCriterion("pay_account not between", value1, value2, "payAccount");
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