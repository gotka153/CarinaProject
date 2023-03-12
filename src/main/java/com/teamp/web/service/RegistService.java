package com.teamp.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamp.web.dao.RegistDAO;
import com.teamp.web.dto.AccidentInformationDTO;
import com.teamp.web.dto.TransactionInformationDTO;
import com.teamp.web.dto.VehicleInformationDTO;

@Service
public class RegistService {

    @Autowired
    RegistDAO registDAO;

    public void insertVi(VehicleInformationDTO vehicleInformationDTO) {
        registDAO.insertVi(vehicleInformationDTO);
    }

    public void insertAi(AccidentInformationDTO accidentInformationDTO) {
        registDAO.insertAi(accidentInformationDTO);
    }

    public void insertTi(TransactionInformationDTO transactionInformationDTO) {
        registDAO.insertTi(transactionInformationDTO);
    }
}