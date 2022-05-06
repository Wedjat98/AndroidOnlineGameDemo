.class public interface abstract Lcom/games37/riversdk/core/login/presenter/IloginPresenter;
.super Ljava/lang/Object;
.source "IloginPresenter.java"

# interfaces
.implements Lcom/games37/riversdk/core/presenter/IActivityPresenter;


# virtual methods
.method public abstract close(Landroid/app/Activity;)V
.end method

.method public abstract doRegisterAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
.end method

.method public abstract login(Landroid/app/Activity;Lcom/games37/riversdk/core/login/model/UserType;Ljava/lang/String;Ljava/lang/String;Lcom/games37/riversdk/core/callback/ResultCallback;)V
.end method

.method public abstract showFindPwdDialog(Landroid/app/Activity;)V
.end method

.method public abstract showPrivacy(Landroid/app/Activity;)V
.end method

.method public abstract showService(Landroid/app/Activity;)V
.end method
