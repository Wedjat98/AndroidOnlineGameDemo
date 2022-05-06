.class public Lcom/games37/riversdk/core/login/model/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"


# instance fields
.field private pwd:Ljava/lang/String;

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/games37/riversdk/core/login/model/UserInfo;->username:Ljava/lang/String;

    .line 23
    iput-object p2, p0, Lcom/games37/riversdk/core/login/model/UserInfo;->pwd:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public getPwd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/games37/riversdk/core/login/model/UserInfo;->pwd:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/games37/riversdk/core/login/model/UserInfo;->username:Ljava/lang/String;

    return-object v0
.end method

.method public setPwd(Ljava/lang/String;)V
    .registers 2
    .param p1, "pwd"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/games37/riversdk/core/login/model/UserInfo;->pwd:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/games37/riversdk/core/login/model/UserInfo;->username:Ljava/lang/String;

    .line 32
    return-void
.end method
