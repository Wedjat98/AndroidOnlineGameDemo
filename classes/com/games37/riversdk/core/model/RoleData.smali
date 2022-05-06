.class public Lcom/games37/riversdk/core/model/RoleData;
.super Ljava/lang/Object;
.source "RoleData.java"


# instance fields
.field private roleId:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "serverId"    # Ljava/lang/String;
    .param p2, "roleId"    # Ljava/lang/String;
    .param p3, "roleName"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/games37/riversdk/core/model/RoleData;->serverId:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/games37/riversdk/core/model/RoleData;->roleId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/games37/riversdk/core/model/RoleData;->roleName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getRoleId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/games37/riversdk/core/model/RoleData;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/games37/riversdk/core/model/RoleData;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/games37/riversdk/core/model/RoleData;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/games37/riversdk/core/model/RoleData;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public isNull()Z
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/games37/riversdk/core/model/RoleData;->serverId:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/games37/riversdk/core/model/RoleData;->roleId:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/games37/riversdk/core/model/RoleData;->roleName:Ljava/lang/String;

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2
    .param p1, "roleId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/games37/riversdk/core/model/RoleData;->roleId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "roleLevel"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/games37/riversdk/core/model/RoleData;->roleLevel:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/games37/riversdk/core/model/RoleData;->roleName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/games37/riversdk/core/model/RoleData;->serverId:Ljava/lang/String;

    .line 42
    return-void
.end method
