// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.springsource.petclinic.web;

import com.springsource.petclinic.web.PetController;
import java.util.ArrayList;
import java.util.List;
import org.gvnix.util.fancytree.TreeNode;
import org.gvnix.util.fancytree.TreeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

privileged aspect PetController_Roo_GvNIXFancyTree {
    
    @Autowired
    public TreeUtils PetController.treeUtils;
    
    @RequestMapping("/tree")
    public String PetController.showTree(Model uiModel) {
        return "pets/tree";
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
    public ResponseEntity<List<TreeNode>> PetController.getTreeData(@RequestParam(value = "id", required = false) String id) {
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
    
    /**
     * Renames a node or changes its position into the tree. Also additional data
     * can be updated by custom method implementation.
     *  
     * @param id Tree node id to be updated
     * @param parent (optional) New parent of updated node
     * @param position (optional) New position on the tree of updated node
     * @param data (optional) Custom data of updated node
     * @param text (optional) New title of updated node
     *  
     * @return OK if update succeed
     */
    @RequestMapping(value = "/tree/update", produces = "application/json", headers = "Accept=application/json", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> PetController.updateTreeData(@RequestParam(value = "id", required = true) String id, @RequestParam(value = "parent", required = false) String parent, @RequestParam(value = "position", required = false) int position, @RequestParam(value = "data", required = false) String data, @RequestParam(value = "text", required = false) String text) {
        //FIXME to be implemented
        return new ResponseEntity<String>(HttpStatus.OK);
    }
    
    /**
     * Removes a element from the tree
     *  
     * @param id Identifier of node to be deleted
     *  
     * @return OK if operation succeed
     */
    @RequestMapping(value = "/tree/delete", produces = "application/json", headers = "Accept=application/json", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> PetController.deleteTreeData(@RequestParam(value = "id", required = true) String id) {
        //FIXME to be implemented
        return new ResponseEntity<String>(HttpStatus.OK);
    }
    
    /**
     * Creates a new tree element to add into the tree.
     *  
     * @param parent Parent of new element to be created. It can be root.
     * @param position (optional) Initial position on the tree of new element
     * @param data (optional) Custom element data
     * @param text (optional) Initial element title 
     *  
     * @return OK if operation succeed
     */
    @RequestMapping(value = "/tree/create", produces = "application/json", headers = "Accept=application/json", method = RequestMethod.POST)
    @ResponseBody
    public ResponseEntity<String> PetController.createTreeData(@RequestParam(value = "parent", required = true) String parent, @RequestParam(value = "position", required = false) int position, @RequestParam(value = "data", required = false) String data, @RequestParam(value = "text", required = false) String text) {
        //FIXME to be implemented
        return new ResponseEntity<String>(HttpStatus.OK);
    }
    
}
