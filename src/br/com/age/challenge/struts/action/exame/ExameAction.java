package br.com.age.challenge.struts.action.exame;

import java.text.ParseException;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Inject;
import com.opensymphony.xwork2.validator.annotations.RequiredFieldValidator;
import com.opensymphony.xwork2.validator.annotations.Validation;
import com.opensymphony.xwork2.validator.annotations.Validations;
import com.opensymphony.xwork2.validator.annotations.ValidatorType;

import br.com.age.challenge.struts.service.ExameService;
import br.com.age.challenge.struts.ws.ExameResourceStub.Exame;

@Validation()
public class ExameAction extends ActionSupport {
	private static final long serialVersionUID = 1L;

	private Long id;

	private Exame exame;

	@Inject("exameService")
	private ExameService exameService;

	@Validations(
			requiredFields = {
				@RequiredFieldValidator(type = ValidatorType.SIMPLE, fieldName = "id", message = "Informe um número válido.")})
	@Override
	public String execute() {
		setExame(exameService.loadExame(getId()));
		if(getExame().getCpf() == null ) {
			addActionError("Não encontramos nenhum exame.");
			return ERROR;
		}
		return SUCCESS;
	}	

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Exame getExame() {
		return exame;
	}

	public void setExame(Exame exame) {
		this.exame = exame;
	}

}
