enum UserRole {
  admin(['read', 'write', 'delete']),
  editor(['read', 'write']),
  viewer(['read']);

  final List<String> _permissions;

  const UserRole(List<String> permissions)
      :_permissions = permissions;

  bool hasPermission(String permission) {
    return this._permissions.contains(permission);
  }

  bool hasReadAccess() => this.hasPermission('read');

  bool hasWriteAccess() => this.hasPermission('write');

  bool hasDeleteAccess() => this.hasPermission('delete');
}

void main() {
  print(UserRole.viewer.hasReadAccess());
  print(UserRole.admin.hasWriteAccess());
  print(UserRole.editor.hasDeleteAccess());
}