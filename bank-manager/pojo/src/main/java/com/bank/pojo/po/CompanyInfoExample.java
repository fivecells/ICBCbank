package com.bank.pojo.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class CompanyInfoExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CompanyInfoExample() {
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

        public Criteria andCompanyIdIsNull() {
            addCriterion("company_id is null");
            return (Criteria) this;
        }

        public Criteria andCompanyIdIsNotNull() {
            addCriterion("company_id is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyIdEqualTo(Integer value) {
            addCriterion("company_id =", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdNotEqualTo(Integer value) {
            addCriterion("company_id <>", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdGreaterThan(Integer value) {
            addCriterion("company_id >", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("company_id >=", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdLessThan(Integer value) {
            addCriterion("company_id <", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdLessThanOrEqualTo(Integer value) {
            addCriterion("company_id <=", value, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdIn(List<Integer> values) {
            addCriterion("company_id in", values, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdNotIn(List<Integer> values) {
            addCriterion("company_id not in", values, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdBetween(Integer value1, Integer value2) {
            addCriterion("company_id between", value1, value2, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyIdNotBetween(Integer value1, Integer value2) {
            addCriterion("company_id not between", value1, value2, "companyId");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameIsNull() {
            addCriterion("company_username is null");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameIsNotNull() {
            addCriterion("company_username is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameEqualTo(String value) {
            addCriterion("company_username =", value, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameNotEqualTo(String value) {
            addCriterion("company_username <>", value, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameGreaterThan(String value) {
            addCriterion("company_username >", value, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("company_username >=", value, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameLessThan(String value) {
            addCriterion("company_username <", value, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameLessThanOrEqualTo(String value) {
            addCriterion("company_username <=", value, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameLike(String value) {
            addCriterion("company_username like", value, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameNotLike(String value) {
            addCriterion("company_username not like", value, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameIn(List<String> values) {
            addCriterion("company_username in", values, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameNotIn(List<String> values) {
            addCriterion("company_username not in", values, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameBetween(String value1, String value2) {
            addCriterion("company_username between", value1, value2, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyUsernameNotBetween(String value1, String value2) {
            addCriterion("company_username not between", value1, value2, "companyUsername");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordIsNull() {
            addCriterion("company_password is null");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordIsNotNull() {
            addCriterion("company_password is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordEqualTo(Integer value) {
            addCriterion("company_password =", value, "companyPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordNotEqualTo(Integer value) {
            addCriterion("company_password <>", value, "companyPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordGreaterThan(Integer value) {
            addCriterion("company_password >", value, "companyPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordGreaterThanOrEqualTo(Integer value) {
            addCriterion("company_password >=", value, "companyPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordLessThan(Integer value) {
            addCriterion("company_password <", value, "companyPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordLessThanOrEqualTo(Integer value) {
            addCriterion("company_password <=", value, "companyPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordIn(List<Integer> values) {
            addCriterion("company_password in", values, "companyPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordNotIn(List<Integer> values) {
            addCriterion("company_password not in", values, "companyPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordBetween(Integer value1, Integer value2) {
            addCriterion("company_password between", value1, value2, "companyPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyPasswordNotBetween(Integer value1, Integer value2) {
            addCriterion("company_password not between", value1, value2, "companyPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusIsNull() {
            addCriterion("company_status is null");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusIsNotNull() {
            addCriterion("company_status is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusEqualTo(Integer value) {
            addCriterion("company_status =", value, "companyStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusNotEqualTo(Integer value) {
            addCriterion("company_status <>", value, "companyStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusGreaterThan(Integer value) {
            addCriterion("company_status >", value, "companyStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("company_status >=", value, "companyStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusLessThan(Integer value) {
            addCriterion("company_status <", value, "companyStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusLessThanOrEqualTo(Integer value) {
            addCriterion("company_status <=", value, "companyStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusIn(List<Integer> values) {
            addCriterion("company_status in", values, "companyStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusNotIn(List<Integer> values) {
            addCriterion("company_status not in", values, "companyStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusBetween(Integer value1, Integer value2) {
            addCriterion("company_status between", value1, value2, "companyStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("company_status not between", value1, value2, "companyStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyNameIsNull() {
            addCriterion("company_name is null");
            return (Criteria) this;
        }

        public Criteria andCompanyNameIsNotNull() {
            addCriterion("company_name is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyNameEqualTo(String value) {
            addCriterion("company_name =", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameNotEqualTo(String value) {
            addCriterion("company_name <>", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameGreaterThan(String value) {
            addCriterion("company_name >", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameGreaterThanOrEqualTo(String value) {
            addCriterion("company_name >=", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameLessThan(String value) {
            addCriterion("company_name <", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameLessThanOrEqualTo(String value) {
            addCriterion("company_name <=", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameLike(String value) {
            addCriterion("company_name like", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameNotLike(String value) {
            addCriterion("company_name not like", value, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameIn(List<String> values) {
            addCriterion("company_name in", values, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameNotIn(List<String> values) {
            addCriterion("company_name not in", values, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameBetween(String value1, String value2) {
            addCriterion("company_name between", value1, value2, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyNameNotBetween(String value1, String value2) {
            addCriterion("company_name not between", value1, value2, "companyName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateIsNull() {
            addCriterion("company_corporate is null");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateIsNotNull() {
            addCriterion("company_corporate is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateEqualTo(String value) {
            addCriterion("company_corporate =", value, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNotEqualTo(String value) {
            addCriterion("company_corporate <>", value, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateGreaterThan(String value) {
            addCriterion("company_corporate >", value, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateGreaterThanOrEqualTo(String value) {
            addCriterion("company_corporate >=", value, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateLessThan(String value) {
            addCriterion("company_corporate <", value, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateLessThanOrEqualTo(String value) {
            addCriterion("company_corporate <=", value, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateLike(String value) {
            addCriterion("company_corporate like", value, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNotLike(String value) {
            addCriterion("company_corporate not like", value, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateIn(List<String> values) {
            addCriterion("company_corporate in", values, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNotIn(List<String> values) {
            addCriterion("company_corporate not in", values, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateBetween(String value1, String value2) {
            addCriterion("company_corporate between", value1, value2, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNotBetween(String value1, String value2) {
            addCriterion("company_corporate not between", value1, value2, "companyCorporate");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeIsNull() {
            addCriterion("company_createtime is null");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeIsNotNull() {
            addCriterion("company_createtime is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeEqualTo(Date value) {
            addCriterionForJDBCDate("company_createtime =", value, "companyCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("company_createtime <>", value, "companyCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeGreaterThan(Date value) {
            addCriterionForJDBCDate("company_createtime >", value, "companyCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("company_createtime >=", value, "companyCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeLessThan(Date value) {
            addCriterionForJDBCDate("company_createtime <", value, "companyCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("company_createtime <=", value, "companyCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeIn(List<Date> values) {
            addCriterionForJDBCDate("company_createtime in", values, "companyCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("company_createtime not in", values, "companyCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("company_createtime between", value1, value2, "companyCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCreatetimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("company_createtime not between", value1, value2, "companyCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneIsNull() {
            addCriterion("company_phone is null");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneIsNotNull() {
            addCriterion("company_phone is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneEqualTo(String value) {
            addCriterion("company_phone =", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneNotEqualTo(String value) {
            addCriterion("company_phone <>", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneGreaterThan(String value) {
            addCriterion("company_phone >", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneGreaterThanOrEqualTo(String value) {
            addCriterion("company_phone >=", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneLessThan(String value) {
            addCriterion("company_phone <", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneLessThanOrEqualTo(String value) {
            addCriterion("company_phone <=", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneLike(String value) {
            addCriterion("company_phone like", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneNotLike(String value) {
            addCriterion("company_phone not like", value, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneIn(List<String> values) {
            addCriterion("company_phone in", values, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneNotIn(List<String> values) {
            addCriterion("company_phone not in", values, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneBetween(String value1, String value2) {
            addCriterion("company_phone between", value1, value2, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyPhoneNotBetween(String value1, String value2) {
            addCriterion("company_phone not between", value1, value2, "companyPhone");
            return (Criteria) this;
        }

        public Criteria andCompanyWebIsNull() {
            addCriterion("company_web is null");
            return (Criteria) this;
        }

        public Criteria andCompanyWebIsNotNull() {
            addCriterion("company_web is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyWebEqualTo(String value) {
            addCriterion("company_web =", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebNotEqualTo(String value) {
            addCriterion("company_web <>", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebGreaterThan(String value) {
            addCriterion("company_web >", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebGreaterThanOrEqualTo(String value) {
            addCriterion("company_web >=", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebLessThan(String value) {
            addCriterion("company_web <", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebLessThanOrEqualTo(String value) {
            addCriterion("company_web <=", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebLike(String value) {
            addCriterion("company_web like", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebNotLike(String value) {
            addCriterion("company_web not like", value, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebIn(List<String> values) {
            addCriterion("company_web in", values, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebNotIn(List<String> values) {
            addCriterion("company_web not in", values, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebBetween(String value1, String value2) {
            addCriterion("company_web between", value1, value2, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyWebNotBetween(String value1, String value2) {
            addCriterion("company_web not between", value1, value2, "companyWeb");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressIsNull() {
            addCriterion("company_address is null");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressIsNotNull() {
            addCriterion("company_address is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressEqualTo(String value) {
            addCriterion("company_address =", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressNotEqualTo(String value) {
            addCriterion("company_address <>", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressGreaterThan(String value) {
            addCriterion("company_address >", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressGreaterThanOrEqualTo(String value) {
            addCriterion("company_address >=", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressLessThan(String value) {
            addCriterion("company_address <", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressLessThanOrEqualTo(String value) {
            addCriterion("company_address <=", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressLike(String value) {
            addCriterion("company_address like", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressNotLike(String value) {
            addCriterion("company_address not like", value, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressIn(List<String> values) {
            addCriterion("company_address in", values, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressNotIn(List<String> values) {
            addCriterion("company_address not in", values, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressBetween(String value1, String value2) {
            addCriterion("company_address between", value1, value2, "companyAddress");
            return (Criteria) this;
        }

        public Criteria andCompanyAddressNotBetween(String value1, String value2) {
            addCriterion("company_address not between", value1, value2, "companyAddress");
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