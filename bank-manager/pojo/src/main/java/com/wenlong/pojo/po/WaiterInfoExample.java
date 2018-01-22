package com.wenlong.pojo.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class WaiterInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public WaiterInfoExample() {
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

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andWaiterIdIsNull() {
            addCriterion("waiter_id is null");
            return (Criteria) this;
        }

        public Criteria andWaiterIdIsNotNull() {
            addCriterion("waiter_id is not null");
            return (Criteria) this;
        }

        public Criteria andWaiterIdEqualTo(Integer value) {
            addCriterion("waiter_id =", value, "waiterId");
            return (Criteria) this;
        }

        public Criteria andWaiterIdNotEqualTo(Integer value) {
            addCriterion("waiter_id <>", value, "waiterId");
            return (Criteria) this;
        }

        public Criteria andWaiterIdGreaterThan(Integer value) {
            addCriterion("waiter_id >", value, "waiterId");
            return (Criteria) this;
        }

        public Criteria andWaiterIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("waiter_id >=", value, "waiterId");
            return (Criteria) this;
        }

        public Criteria andWaiterIdLessThan(Integer value) {
            addCriterion("waiter_id <", value, "waiterId");
            return (Criteria) this;
        }

        public Criteria andWaiterIdLessThanOrEqualTo(Integer value) {
            addCriterion("waiter_id <=", value, "waiterId");
            return (Criteria) this;
        }

        public Criteria andWaiterIdIn(List<Integer> values) {
            addCriterion("waiter_id in", values, "waiterId");
            return (Criteria) this;
        }

        public Criteria andWaiterIdNotIn(List<Integer> values) {
            addCriterion("waiter_id not in", values, "waiterId");
            return (Criteria) this;
        }

        public Criteria andWaiterIdBetween(Integer value1, Integer value2) {
            addCriterion("waiter_id between", value1, value2, "waiterId");
            return (Criteria) this;
        }

        public Criteria andWaiterIdNotBetween(Integer value1, Integer value2) {
            addCriterion("waiter_id not between", value1, value2, "waiterId");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameIsNull() {
            addCriterion("waiter_username is null");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameIsNotNull() {
            addCriterion("waiter_username is not null");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameEqualTo(String value) {
            addCriterion("waiter_username =", value, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameNotEqualTo(String value) {
            addCriterion("waiter_username <>", value, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameGreaterThan(String value) {
            addCriterion("waiter_username >", value, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("waiter_username >=", value, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameLessThan(String value) {
            addCriterion("waiter_username <", value, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameLessThanOrEqualTo(String value) {
            addCriterion("waiter_username <=", value, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameLike(String value) {
            addCriterion("waiter_username like", value, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameNotLike(String value) {
            addCriterion("waiter_username not like", value, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameIn(List<String> values) {
            addCriterion("waiter_username in", values, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameNotIn(List<String> values) {
            addCriterion("waiter_username not in", values, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameBetween(String value1, String value2) {
            addCriterion("waiter_username between", value1, value2, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterUsernameNotBetween(String value1, String value2) {
            addCriterion("waiter_username not between", value1, value2, "waiterUsername");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordIsNull() {
            addCriterion("waiter_password is null");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordIsNotNull() {
            addCriterion("waiter_password is not null");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordEqualTo(String value) {
            addCriterion("waiter_password =", value, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordNotEqualTo(String value) {
            addCriterion("waiter_password <>", value, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordGreaterThan(String value) {
            addCriterion("waiter_password >", value, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("waiter_password >=", value, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordLessThan(String value) {
            addCriterion("waiter_password <", value, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordLessThanOrEqualTo(String value) {
            addCriterion("waiter_password <=", value, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordLike(String value) {
            addCriterion("waiter_password like", value, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordNotLike(String value) {
            addCriterion("waiter_password not like", value, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordIn(List<String> values) {
            addCriterion("waiter_password in", values, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordNotIn(List<String> values) {
            addCriterion("waiter_password not in", values, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordBetween(String value1, String value2) {
            addCriterion("waiter_password between", value1, value2, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterPasswordNotBetween(String value1, String value2) {
            addCriterion("waiter_password not between", value1, value2, "waiterPassword");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameIsNull() {
            addCriterion("waiter_realname is null");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameIsNotNull() {
            addCriterion("waiter_realname is not null");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameEqualTo(String value) {
            addCriterion("waiter_realname =", value, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameNotEqualTo(String value) {
            addCriterion("waiter_realname <>", value, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameGreaterThan(String value) {
            addCriterion("waiter_realname >", value, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameGreaterThanOrEqualTo(String value) {
            addCriterion("waiter_realname >=", value, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameLessThan(String value) {
            addCriterion("waiter_realname <", value, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameLessThanOrEqualTo(String value) {
            addCriterion("waiter_realname <=", value, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameLike(String value) {
            addCriterion("waiter_realname like", value, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameNotLike(String value) {
            addCriterion("waiter_realname not like", value, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameIn(List<String> values) {
            addCriterion("waiter_realname in", values, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameNotIn(List<String> values) {
            addCriterion("waiter_realname not in", values, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameBetween(String value1, String value2) {
            addCriterion("waiter_realname between", value1, value2, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterRealnameNotBetween(String value1, String value2) {
            addCriterion("waiter_realname not between", value1, value2, "waiterRealname");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityIsNull() {
            addCriterion("waiter_identity is null");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityIsNotNull() {
            addCriterion("waiter_identity is not null");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityEqualTo(String value) {
            addCriterion("waiter_identity =", value, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityNotEqualTo(String value) {
            addCriterion("waiter_identity <>", value, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityGreaterThan(String value) {
            addCriterion("waiter_identity >", value, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityGreaterThanOrEqualTo(String value) {
            addCriterion("waiter_identity >=", value, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityLessThan(String value) {
            addCriterion("waiter_identity <", value, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityLessThanOrEqualTo(String value) {
            addCriterion("waiter_identity <=", value, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityLike(String value) {
            addCriterion("waiter_identity like", value, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityNotLike(String value) {
            addCriterion("waiter_identity not like", value, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityIn(List<String> values) {
            addCriterion("waiter_identity in", values, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityNotIn(List<String> values) {
            addCriterion("waiter_identity not in", values, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityBetween(String value1, String value2) {
            addCriterion("waiter_identity between", value1, value2, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterIdentityNotBetween(String value1, String value2) {
            addCriterion("waiter_identity not between", value1, value2, "waiterIdentity");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneIsNull() {
            addCriterion("waiter_phone is null");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneIsNotNull() {
            addCriterion("waiter_phone is not null");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneEqualTo(String value) {
            addCriterion("waiter_phone =", value, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneNotEqualTo(String value) {
            addCriterion("waiter_phone <>", value, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneGreaterThan(String value) {
            addCriterion("waiter_phone >", value, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("waiter_phone >=", value, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneLessThan(String value) {
            addCriterion("waiter_phone <", value, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneLessThanOrEqualTo(String value) {
            addCriterion("waiter_phone <=", value, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneLike(String value) {
            addCriterion("waiter_phone like", value, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneNotLike(String value) {
            addCriterion("waiter_phone not like", value, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneIn(List<String> values) {
            addCriterion("waiter_phone in", values, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneNotIn(List<String> values) {
            addCriterion("waiter_phone not in", values, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneBetween(String value1, String value2) {
            addCriterion("waiter_phone between", value1, value2, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterPhoneNotBetween(String value1, String value2) {
            addCriterion("waiter_phone not between", value1, value2, "waiterPhone");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusIsNull() {
            addCriterion("waiter_status is null");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusIsNotNull() {
            addCriterion("waiter_status is not null");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusEqualTo(Integer value) {
            addCriterion("waiter_status =", value, "waiterStatus");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusNotEqualTo(Integer value) {
            addCriterion("waiter_status <>", value, "waiterStatus");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusGreaterThan(Integer value) {
            addCriterion("waiter_status >", value, "waiterStatus");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("waiter_status >=", value, "waiterStatus");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusLessThan(Integer value) {
            addCriterion("waiter_status <", value, "waiterStatus");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusLessThanOrEqualTo(Integer value) {
            addCriterion("waiter_status <=", value, "waiterStatus");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusIn(List<Integer> values) {
            addCriterion("waiter_status in", values, "waiterStatus");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusNotIn(List<Integer> values) {
            addCriterion("waiter_status not in", values, "waiterStatus");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusBetween(Integer value1, Integer value2) {
            addCriterion("waiter_status between", value1, value2, "waiterStatus");
            return (Criteria) this;
        }

        public Criteria andWaiterStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("waiter_status not between", value1, value2, "waiterStatus");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateIsNull() {
            addCriterion("waiter_hiredate is null");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateIsNotNull() {
            addCriterion("waiter_hiredate is not null");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateEqualTo(Date value) {
            addCriterionForJDBCDate("waiter_hiredate =", value, "waiterHiredate");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateNotEqualTo(Date value) {
            addCriterionForJDBCDate("waiter_hiredate <>", value, "waiterHiredate");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateGreaterThan(Date value) {
            addCriterionForJDBCDate("waiter_hiredate >", value, "waiterHiredate");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("waiter_hiredate >=", value, "waiterHiredate");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateLessThan(Date value) {
            addCriterionForJDBCDate("waiter_hiredate <", value, "waiterHiredate");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("waiter_hiredate <=", value, "waiterHiredate");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateIn(List<Date> values) {
            addCriterionForJDBCDate("waiter_hiredate in", values, "waiterHiredate");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateNotIn(List<Date> values) {
            addCriterionForJDBCDate("waiter_hiredate not in", values, "waiterHiredate");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("waiter_hiredate between", value1, value2, "waiterHiredate");
            return (Criteria) this;
        }

        public Criteria andWaiterHiredateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("waiter_hiredate not between", value1, value2, "waiterHiredate");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailIsNull() {
            addCriterion("waiter_email is null");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailIsNotNull() {
            addCriterion("waiter_email is not null");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailEqualTo(String value) {
            addCriterion("waiter_email =", value, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailNotEqualTo(String value) {
            addCriterion("waiter_email <>", value, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailGreaterThan(String value) {
            addCriterion("waiter_email >", value, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailGreaterThanOrEqualTo(String value) {
            addCriterion("waiter_email >=", value, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailLessThan(String value) {
            addCriterion("waiter_email <", value, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailLessThanOrEqualTo(String value) {
            addCriterion("waiter_email <=", value, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailLike(String value) {
            addCriterion("waiter_email like", value, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailNotLike(String value) {
            addCriterion("waiter_email not like", value, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailIn(List<String> values) {
            addCriterion("waiter_email in", values, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailNotIn(List<String> values) {
            addCriterion("waiter_email not in", values, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailBetween(String value1, String value2) {
            addCriterion("waiter_email between", value1, value2, "waiterEmail");
            return (Criteria) this;
        }

        public Criteria andWaiterEmailNotBetween(String value1, String value2) {
            addCriterion("waiter_email not between", value1, value2, "waiterEmail");
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