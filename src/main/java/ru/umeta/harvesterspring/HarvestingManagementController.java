package ru.umeta.harvesterspring;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import ru.umeta.harvesterspring.services.IHarvestingManagementService;
import ru.umeta.harvesting.base.wrap.QueryMessage;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HarvestingManagementController {
	
	private static final Logger logger = LoggerFactory.getLogger(HarvestingManagementController.class);
	
//	private final IHarvestingManagementService harvestingManagementService;
//	
//	public HarvestingManagementController(IHarvestingManagementService harvestingManagementService) {
//		this.harvestingManagementService = harvestingManagementService;
//	}
	
//	/**
//	 * Simply selects the home view to render by returning its name.
//	 */
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
//		
//		return "home";
//	}
//	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String home(Model model) {
//		return "";
//	}
	
//	@RequestMapping(value = "/nodes", method = RequestMethod.GET)
//	public String nodes(Locale locale, Model model) {
//		logger.info("Nodes controller is accessed.");
//
//		QueryMessage queryMessage = new QueryMessage();
//		try {
//			queryMessage = harvestingManagementService.getQueriesForUser(user, pw);
//		} catch (Exception e) {
//			
//		}
//		
//		if (queryMessage.getText() == null ) {
//		
//		}
//		return "nodes";
//	}
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String login(Locale locale, Model model) {
		return "login";
	}
	
}
