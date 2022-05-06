.class public Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1ed841325b79df0L


# instance fields
.field private cpOrderId:Ljava/lang/String;

.field private productId:Ljava/lang/String;

.field private remark:Ljava/lang/String;

.field private roleId:Ljava/lang/String;

.field private roleLevel:Ljava/lang/String;

.field private roleName:Ljava/lang/String;

.field private serverId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "roleId"    # Ljava/lang/String;
    .param p2, "roleName"    # Ljava/lang/String;
    .param p3, "roleLevel"    # Ljava/lang/String;
    .param p4, "serverId"    # Ljava/lang/String;
    .param p5, "productId"    # Ljava/lang/String;
    .param p6, "cpOrderId"    # Ljava/lang/String;
    .param p7, "remark"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleId:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleName:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleLevel:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->serverId:Ljava/lang/String;

    .line 59
    iput-object p5, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->productId:Ljava/lang/String;

    .line 60
    iput-object p6, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->cpOrderId:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->remark:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getCpOrderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->cpOrderId:Ljava/lang/String;

    return-object v0
.end method

.method public getProductId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->remark:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleId:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleLevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleName:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->serverId:Ljava/lang/String;

    return-object v0
.end method

.method public setCpOrderId(Ljava/lang/String;)V
    .registers 2
    .param p1, "cpOrderId"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->cpOrderId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .registers 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->productId:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->remark:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2
    .param p1, "roleId"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleId:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setRoleLevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "roleLevel"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleLevel:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setRoleName(Ljava/lang/String;)V
    .registers 2
    .param p1, "roleName"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleName:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setServerId(Ljava/lang/String;)V
    .registers 2
    .param p1, "serverId"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->serverId:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PurchaseInfo{roleId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roleName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roleLevel=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->roleLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serverId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", productId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cpOrderId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->cpOrderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/games37/riversdk/core/purchase/model/PurchaseInfo;->remark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
