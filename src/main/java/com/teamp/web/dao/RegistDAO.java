package com.teamp.web.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.teamp.web.dto.AccidentInformationDTO;
import com.teamp.web.dto.TransactionInformationDTO;
import com.teamp.web.dto.VehicleInformationDTO;

@Repository
@Mapper
public interface RegistDAO {

	void insertVi(VehicleInformationDTO vehicleInformationDTO);

	void insertAi(AccidentInformationDTO accidentInformationDTO);

	void insertTi(TransactionInformationDTO transactionInformationDTO);

}