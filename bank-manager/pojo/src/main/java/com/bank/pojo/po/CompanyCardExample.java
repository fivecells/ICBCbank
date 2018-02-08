package com.wenlong.pojo.po;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CompanyCardExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CompanyCardExample() {
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

        public Criteria andCompanyCardIdIsNull() {
            addCriterion("company_card_id is null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdIsNotNull() {
            addCriterion("company_card_id is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdEqualTo(Long value) {
            addCriterion("company_card_id =", value, "companyCardId");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdNotEqualTo(Long value) {
            addCriterion("company_card_id <>", value, "companyCardId");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdGreaterThan(Long value) {
            addCriterion("company_card_id >", value, "companyCardId");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdGreaterThanOrEqualTo(Long value) {
            addCriterion("company_card_id >=", value, "companyCardId");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdLessThan(Long value) {
            addCriterion("company_card_id <", value, "companyCardId");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdLessThanOrEqualTo(Long value) {
            addCriterion("company_card_id <=", value, "companyCardId");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdIn(List<Long> values) {
            addCriterion("company_card_id in", values, "companyCardId");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdNotIn(List<Long> values) {
            addCriterion("company_card_id not in", values, "companyCardId");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdBetween(Long value1, Long value2) {
            addCriterion("company_card_id between", value1, value2, "companyCardId");
            return (Criteria) this;
        }

        public Criteria andCompanyCardIdNotBetween(Long value1, Long value2) {
            addCriterion("company_card_id not between", value1, value2, "companyCardId");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordIsNull() {
            addCriterion("company_card_password is null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordIsNotNull() {
            addCriterion("company_card_password is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordEqualTo(Integer value) {
            addCriterion("company_card_password =", value, "companyCardPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordNotEqualTo(Integer value) {
            addCriterion("company_card_password <>", value, "companyCardPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordGreaterThan(Integer value) {
            addCriterion("company_card_password >", value, "companyCardPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordGreaterThanOrEqualTo(Integer value) {
            addCriterion("company_card_password >=", value, "companyCardPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordLessThan(Integer value) {
            addCriterion("company_card_password <", value, "companyCardPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordLessThanOrEqualTo(Integer value) {
            addCriterion("company_card_password <=", value, "companyCardPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordIn(List<Integer> values) {
            addCriterion("company_card_password in", values, "companyCardPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordNotIn(List<Integer> values) {
            addCriterion("company_card_password not in", values, "companyCardPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordBetween(Integer value1, Integer value2) {
            addCriterion("company_card_password between", value1, value2, "companyCardPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyCardPasswordNotBetween(Integer value1, Integer value2) {
            addCriterion("company_card_password not between", value1, value2, "companyCardPassword");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberIsNull() {
            addCriterion("company_licence_number is null");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberIsNotNull() {
            addCriterion("company_licence_number is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberEqualTo(Long value) {
            addCriterion("company_licence_number =", value, "companyLicenceNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberNotEqualTo(Long value) {
            addCriterion("company_licence_number <>", value, "companyLicenceNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberGreaterThan(Long value) {
            addCriterion("company_licence_number >", value, "companyLicenceNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberGreaterThanOrEqualTo(Long value) {
            addCriterion("company_licence_number >=", value, "companyLicenceNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberLessThan(Long value) {
            addCriterion("company_licence_number <", value, "companyLicenceNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberLessThanOrEqualTo(Long value) {
            addCriterion("company_licence_number <=", value, "companyLicenceNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberIn(List<Long> values) {
            addCriterion("company_licence_number in", values, "companyLicenceNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberNotIn(List<Long> values) {
            addCriterion("company_licence_number not in", values, "companyLicenceNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberBetween(Long value1, Long value2) {
            addCriterion("company_licence_number between", value1, value2, "companyLicenceNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyLicenceNumberNotBetween(Long value1, Long value2) {
            addCriterion("company_licence_number not between", value1, value2, "companyLicenceNumber");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchIsNull() {
            addCriterion("company_card_subbranch is null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchIsNotNull() {
            addCriterion("company_card_subbranch is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchEqualTo(String value) {
            addCriterion("company_card_subbranch =", value, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchNotEqualTo(String value) {
            addCriterion("company_card_subbranch <>", value, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchGreaterThan(String value) {
            addCriterion("company_card_subbranch >", value, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchGreaterThanOrEqualTo(String value) {
            addCriterion("company_card_subbranch >=", value, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchLessThan(String value) {
            addCriterion("company_card_subbranch <", value, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchLessThanOrEqualTo(String value) {
            addCriterion("company_card_subbranch <=", value, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchLike(String value) {
            addCriterion("company_card_subbranch like", value, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchNotLike(String value) {
            addCriterion("company_card_subbranch not like", value, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchIn(List<String> values) {
            addCriterion("company_card_subbranch in", values, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchNotIn(List<String> values) {
            addCriterion("company_card_subbranch not in", values, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchBetween(String value1, String value2) {
            addCriterion("company_card_subbranch between", value1, value2, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCardSubbranchNotBetween(String value1, String value2) {
            addCriterion("company_card_subbranch not between", value1, value2, "companyCardSubbranch");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameIsNull() {
            addCriterion("company_corporate_name is null");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameIsNotNull() {
            addCriterion("company_corporate_name is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameEqualTo(String value) {
            addCriterion("company_corporate_name =", value, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameNotEqualTo(String value) {
            addCriterion("company_corporate_name <>", value, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameGreaterThan(String value) {
            addCriterion("company_corporate_name >", value, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameGreaterThanOrEqualTo(String value) {
            addCriterion("company_corporate_name >=", value, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameLessThan(String value) {
            addCriterion("company_corporate_name <", value, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameLessThanOrEqualTo(String value) {
            addCriterion("company_corporate_name <=", value, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameLike(String value) {
            addCriterion("company_corporate_name like", value, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameNotLike(String value) {
            addCriterion("company_corporate_name not like", value, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameIn(List<String> values) {
            addCriterion("company_corporate_name in", values, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameNotIn(List<String> values) {
            addCriterion("company_corporate_name not in", values, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameBetween(String value1, String value2) {
            addCriterion("company_corporate_name between", value1, value2, "companyCorporateName");
            return (Criteria) this;
        }

        public Criteria andCompanyCorporateNameNotBetween(String value1, String value2) {
            addCriterion("company_corporate_name not between", value1, value2, "companyCorporateName");
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

        public Criteria andCompanyCardAmountIsNull() {
            addCriterion("company_card_amount is null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountIsNotNull() {
            addCriterion("company_card_amount is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountEqualTo(Double value) {
            addCriterion("company_card_amount =", value, "companyCardAmount");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountNotEqualTo(Double value) {
            addCriterion("company_card_amount <>", value, "companyCardAmount");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountGreaterThan(Double value) {
            addCriterion("company_card_amount >", value, "companyCardAmount");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountGreaterThanOrEqualTo(Double value) {
            addCriterion("company_card_amount >=", value, "companyCardAmount");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountLessThan(Double value) {
            addCriterion("company_card_amount <", value, "companyCardAmount");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountLessThanOrEqualTo(Double value) {
            addCriterion("company_card_amount <=", value, "companyCardAmount");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountIn(List<Double> values) {
            addCriterion("company_card_amount in", values, "companyCardAmount");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountNotIn(List<Double> values) {
            addCriterion("company_card_amount not in", values, "companyCardAmount");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountBetween(Double value1, Double value2) {
            addCriterion("company_card_amount between", value1, value2, "companyCardAmount");
            return (Criteria) this;
        }

        public Criteria andCompanyCardAmountNotBetween(Double value1, Double value2) {
            addCriterion("company_card_amount not between", value1, value2, "companyCardAmount");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusIsNull() {
            addCriterion("company_card_status is null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusIsNotNull() {
            addCriterion("company_card_status is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusEqualTo(Integer value) {
            addCriterion("company_card_status =", value, "companyCardStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusNotEqualTo(Integer value) {
            addCriterion("company_card_status <>", value, "companyCardStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusGreaterThan(Integer value) {
            addCriterion("company_card_status >", value, "companyCardStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusGreaterThanOrEqualTo(Integer value) {
            addCriterion("company_card_status >=", value, "companyCardStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusLessThan(Integer value) {
            addCriterion("company_card_status <", value, "companyCardStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusLessThanOrEqualTo(Integer value) {
            addCriterion("company_card_status <=", value, "companyCardStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusIn(List<Integer> values) {
            addCriterion("company_card_status in", values, "companyCardStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusNotIn(List<Integer> values) {
            addCriterion("company_card_status not in", values, "companyCardStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusBetween(Integer value1, Integer value2) {
            addCriterion("company_card_status between", value1, value2, "companyCardStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyCardStatusNotBetween(Integer value1, Integer value2) {
            addCriterion("company_card_status not between", value1, value2, "companyCardStatus");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeIsNull() {
            addCriterion("company_card_createtime is null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeIsNotNull() {
            addCriterion("company_card_createtime is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeEqualTo(Date value) {
            addCriterion("company_card_createtime =", value, "companyCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeNotEqualTo(Date value) {
            addCriterion("company_card_createtime <>", value, "companyCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeGreaterThan(Date value) {
            addCriterion("company_card_createtime >", value, "companyCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeGreaterThanOrEqualTo(Date value) {
            addCriterion("company_card_createtime >=", value, "companyCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeLessThan(Date value) {
            addCriterion("company_card_createtime <", value, "companyCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeLessThanOrEqualTo(Date value) {
            addCriterion("company_card_createtime <=", value, "companyCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeIn(List<Date> values) {
            addCriterion("company_card_createtime in", values, "companyCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeNotIn(List<Date> values) {
            addCriterion("company_card_createtime not in", values, "companyCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeBetween(Date value1, Date value2) {
            addCriterion("company_card_createtime between", value1, value2, "companyCardCreatetime");
            return (Criteria) this;
        }

        public Criteria andCompanyCardCreatetimeNotBetween(Date value1, Date value2) {
            addCriterion("company_card_createtime not between", value1, value2, "companyCardCreatetime");
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