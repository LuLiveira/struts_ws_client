package br.com.age.challenge.struts.service;

import br.com.age.challenge.struts.ws.ExameResourceStub;
import br.com.age.challenge.struts.ws.ExameResourceStub.Exame;
import br.com.age.challenge.struts.ws.ExameResourceStub.List;

public class ExameService {

	public Exame loadExame(Long id) {

		try {

			ExameResourceStub exameResourceStub = new ExameResourceStub();
			List listMethod = new List();
			listMethod.setId(id);

			return exameResourceStub.list(listMethod).get_return();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return null;
	}

}
