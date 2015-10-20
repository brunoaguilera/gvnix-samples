// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.web;

import com.springsource.petclinic.web.VetController;
import java.util.ArrayList;
import java.util.List;
import org.gvnix.util.fancytree.TreeNode;
import org.gvnix.util.fancytree.TreeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect VetController_Roo_GvNIXFancyTree {
    
    @Autowired
    public TreeUtils VetController.treeUtils;
    
    @RequestMapping("/tree")
    public String VetController.showTree(Model uiModel) {
        return "vets/tree";
    }
    
    /**
     * Returns the data that will be loaded by Fancytree. It can be added by
     * custom implementation.
     *  
     * @param id (optional) Tree node id to be loaded
     *  
     * @return Data to be loaded by Fancytree
     */
    @RequestMapping(value = "/tree", produces = "application/json", headers = "Accept=application/json")
    @ResponseBody
    public ResponseEntity<List<TreeNode>> VetController.getTreeData(@RequestParam(value = "id", required = false) String id) {
        //FIXME to be implemented
        List<TreeNode> data = new ArrayList<TreeNode>();
        if (treeUtils.isRootNode(id) || id == null) {
            TreeNode node1 = new TreeNode("Node 1", true);
            node1.addChild(new TreeNode("subnode1"));
            node1.addChild(new TreeNode("subnode2"));
            data.add(node1);
            TreeNode node2 = new TreeNode("Node 2");
            data.add(node2);
        } else if ("Node 1".equals(id)) {
            data.add(new TreeNode("subnode1"));
            data.add(new TreeNode("subnode2"));
        }
        return new ResponseEntity <List<TreeNode>>(data, HttpStatus.OK);
    }
    
}
