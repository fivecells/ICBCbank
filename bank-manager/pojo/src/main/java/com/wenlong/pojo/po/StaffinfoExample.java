package com.wenlong.pojo.po;

import java.util.ArrayList;
import java.util.List;

public class StaffinfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public StaffinfoExample() {
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

        public Criteria andStaffIdIsNull() {
            addCriterion("staff_id is null");
            return (Criteria) this;
        }

        public Criteria andStaffIdIsNotNull() {
            addCriterion("staff_id is not null");
            return (Criteria) this;
        }

        public Criteria andStaffIdEqualTo(Integer value) {
            addCriterion("staff_id =", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdNotEqualTo(Integer value) {
            addCriterion("staff_id <>", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdGreaterThan(Integer value) {
            addCriterion("staff_id >", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("staff_id >=", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdLessThan(Integer value) {
            addCriterion("staff_id <", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdLessThanOrEqualTo(Integer value) {
            addCriterion("staff_id <=", value, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdIn(List<Integer> values) {
            addCriterion("staff_id in", values, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdNotIn(List<Integer> values) {
            addCriterion("staff_id not in", values, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdBetween(Integer value1, Integer value2) {
            addCriterion("staff_id between", value1, value2, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffIdNotBetween(Integer value1, Integer value2) {
            addCriterion("staff_id not between", value1, value2, "staffId");
            return (Criteria) this;
        }

        public Criteria andStaffNameIsNull() {
            addCriterion("staff_name is null");
            return (Criteria) this;
        }

        public Criteria andStaffNameIsNotNull() {
            addCriterion("staff_name is not null");
            return (Criteria) this;
        }

        public Criteria andStaffNameEqualTo(String value) {
            addCriterion("staff_name =", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameNotEqualTo(String value) {
            addCriterion("staff_name <>", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameGreaterThan(String value) {
            addCriterion("staff_name >", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameGreaterThanOrEqualTo(String value) {
            addCriterion("staff_name >=", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameLessThan(String value) {
            addCriterion("staff_name <", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameLessThanOrEqualTo(String value) {
            addCriterion("staff_name <=", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameLike(String value) {
            addCriterion("staff_name like", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameNotLike(String value) {
            addCriterion("staff_name not like", value, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameIn(List<String> values) {
            addCriterion("staff_name in", values, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameNotIn(List<String> values) {
            addCriterion("staff_name not in", values, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameBetween(String value1, String value2) {
            addCriterion("staff_name between", value1, value2, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffNameNotBetween(String value1, String value2) {
            addCriterion("staff_name not between", value1, value2, "staffName");
            return (Criteria) this;
        }

        public Criteria andStaffPwdIsNull() {
            addCriterion("staff_pwd is null");
            return (Criteria) this;
        }

        public Criteria andStaffPwdIsNotNull() {
            addCriterion("staff_pwd is not null");
            return (Criteria) this;
        }

        public Criteria andStaffPwdEqualTo(String value) {
            addCriterion("staff_pwd =", value, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdNotEqualTo(String value) {
            addCriterion("staff_pwd <>", value, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdGreaterThan(String value) {
            addCriterion("staff_pwd >", value, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdGreaterThanOrEqualTo(String value) {
            addCriterion("staff_pwd >=", value, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdLessThan(String value) {
            addCriterion("staff_pwd <", value, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdLessThanOrEqualTo(String value) {
            addCriterion("staff_pwd <=", value, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdLike(String value) {
            addCriterion("staff_pwd like", value, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdNotLike(String value) {
            addCriterion("staff_pwd not like", value, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdIn(List<String> values) {
            addCriterion("staff_pwd in", values, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdNotIn(List<String> values) {
            addCriterion("staff_pwd not in", values, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdBetween(String value1, String value2) {
            addCriterion("staff_pwd between", value1, value2, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffPwdNotBetween(String value1, String value2) {
            addCriterion("staff_pwd not between", value1, value2, "staffPwd");
            return (Criteria) this;
        }

        public Criteria andStaffLevelIsNull() {
            addCriterion("staff_level is null");
            return (Criteria) this;
        }

        public Criteria andStaffLevelIsNotNull() {
            addCriterion("staff_level is not null");
            return (Criteria) this;
        }

        public Criteria andStaffLevelEqualTo(Integer value) {
            addCriterion("staff_level =", value, "staffLevel");
            return (Criteria) this;
        }

        public Criteria andStaffLevelNotEqualTo(Integer value) {
            addCriterion("staff_level <>", value, "staffLevel");
            return (Criteria) this;
        }

        public Criteria andStaffLevelGreaterThan(Integer value) {
            addCriterion("staff_level >", value, "staffLevel");
            return (Criteria) this;
        }

        public Criteria andStaffLevelGreaterThanOrEqualTo(Integer value) {
            addCriterion("staff_level >=", value, "staffLevel");
            return (Criteria) this;
        }

        public Criteria andStaffLevelLessThan(Integer value) {
            addCriterion("staff_level <", value, "staffLevel");
            return (Criteria) this;
        }

        public Criteria andStaffLevelLessThanOrEqualTo(Integer value) {
            addCriterion("staff_level <=", value, "staffLevel");
            return (Criteria) this;
        }

        public Criteria andStaffLevelIn(List<Integer> values) {
            addCriterion("staff_level in", values, "staffLevel");
            return (Criteria) this;
        }

        public Criteria andStaffLevelNotIn(List<Integer> values) {
            addCriterion("staff_level not in", values, "staffLevel");
            return (Criteria) this;
        }

        public Criteria andStaffLevelBetween(Integer value1, Integer value2) {
            addCriterion("staff_level between", value1, value2, "staffLevel");
            return (Criteria) this;
        }

        public Criteria andStaffLevelNotBetween(Integer value1, Integer value2) {
            addCriterion("staff_level not between", value1, value2, "staffLevel");
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