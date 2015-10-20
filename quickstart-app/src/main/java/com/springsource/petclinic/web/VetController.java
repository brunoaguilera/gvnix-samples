package com.springsource.petclinic.web;
import com.springsource.petclinic.domain.Vet;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.springsource.petclinic.domain.VetBatchService;
import org.gvnix.addon.web.mvc.annotations.batch.GvNIXWebJpaBatch;
import org.gvnix.addon.web.mvc.annotations.jquery.GvNIXWebJQuery;
import org.gvnix.addon.datatables.annotations.GvNIXDatatables;
import org.gvnix.addon.fancytree.annotations.GvNIXFancyTree;

@RequestMapping("/vets")
@Controller
@RooWebScaffold(path = "vets", formBackingObject = Vet.class)
@GvNIXWebJpaBatch(service = VetBatchService.class)
@GvNIXWebJQuery
@GvNIXDatatables(ajax = true, mode = "show", detailFields = { "visits" })
@GvNIXFancyTree(mapping = "tree", page = "tree")
public class VetController {
}
