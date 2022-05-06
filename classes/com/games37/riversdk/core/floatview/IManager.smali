.class public abstract Lcom/games37/riversdk/core/floatview/IManager;
.super Ljava/lang/Object;
.source "IManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "IManager"


# instance fields
.field protected mRoleData:Lcom/games37/riversdk/core/model/RoleData;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public getRoleData()Lcom/games37/riversdk/core/model/RoleData;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/games37/riversdk/core/floatview/IManager;->mRoleData:Lcom/games37/riversdk/core/model/RoleData;

    return-object v0
.end method

.method public abstract hide()V
.end method

.method public abstract init(Landroid/app/Activity;)V
.end method

.method public setRoleData(Lcom/games37/riversdk/core/model/RoleData;)V
    .registers 2
    .param p1, "roleData"    # Lcom/games37/riversdk/core/model/RoleData;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/games37/riversdk/core/floatview/IManager;->mRoleData:Lcom/games37/riversdk/core/model/RoleData;

    .line 48
    return-void
.end method

.method public abstract show()V
.end method
