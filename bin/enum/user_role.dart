enum UserRole {
  admin(['read', 'write', 'delete']),
  editor(['read', 'write']),
  viewer(['read']);

  final List<String> _permissions;

  const UserRole(List<String> permissions)
      :_permissions = permissions;

  bool hasPermission(String permission) {
    return _permissions.contains(permission);
  }

  bool hasReadAccess() => hasPermission('read');

  bool hasWriteAccess() => hasPermission('write');

  bool hasDeleteAccess() => hasPermission('delete');
}

void main() {
  print(UserRole.viewer.hasReadAccess());
  print(UserRole.admin.hasWriteAccess());
  print(UserRole.editor.hasDeleteAccess());
}