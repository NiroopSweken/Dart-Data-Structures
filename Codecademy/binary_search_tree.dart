class Node {
  int value;
  Node? left, right;

  Node({required this.value, this.left, this.right});
}

class BinarySearchTree {
  Node? root;

  /*-----------------------------------------------------*/
  /*------- Inserting values in a tree structure --------*/
  /*-----------------------------------------------------*/

  void insert(int value) {
    root = _insertNode(root, value);
  }

  Node _insertNode(Node? node, int value) {
    if (node == null) {
      node = Node(value: value);
      return node;
    }

    if (value < node.value) {
      node.left = _insertNode(node.left, value);
    } else if (value > node.value) {
      node.right = _insertNode(node.right, value);
    }

    return node;
  }

  /*-----------------------------------------------------*/
  /*---------To make the node values in an order---------*/
  /*-----------------------------------------------------*/

  void inOrderTransversal() {
    _inOrderTransversalNode(root);
  }

  void _inOrderTransversalNode(Node? node) {
    if (node != null) {
      _inOrderTransversalNode(node.left);
      print(node.value);
      _inOrderTransversalNode(node.right);
    }
  }

  /*-----------------------------------------------------*/
  /*-----------To Search a node in Binary Tree-----------*/
  /*-----------------------------------------------------*/

  bool search(int value) {
    return _searchNode(root, value);
  }

  bool _searchNode(Node? node, int value) {
    if (node == null) {
      return false;
    }

    if (value == node.value) {
      return true;
    } else if (value < node.value) {
      return _searchNode(node.left, value);
    } else {
      return _searchNode(node.right, value);
    }
  }
}

void main() {
  BinarySearchTree bst = BinarySearchTree();
  bst.insert(48);
  bst.insert(39);
  bst.insert(15);
  bst.insert(45);
  bst.insert(56);
  bst.insert(41);
  bst.insert(23);
  bst.insert(54);
  bst.insert(56);
  bst.insert(32);
  bst.insert(14);

  print("In order transversal: ");
  bst.inOrderTransversal();

  int searchData = 6;
  if (bst.search(searchData)) {
    print("$searchData is foind in the binary search tree");
  } else {
    print("$searchData is not found in the binary search tree");
  }
}
