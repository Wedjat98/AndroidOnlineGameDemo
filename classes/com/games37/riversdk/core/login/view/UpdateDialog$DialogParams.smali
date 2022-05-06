.class public Lcom/games37/riversdk/core/login/view/UpdateDialog$DialogParams;
.super Ljava/lang/Object;
.source "UpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/core/login/view/UpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogParams"
.end annotation


# instance fields
.field public cancelText:Ljava/lang/String;

.field public comfirmText:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public onBtnClickListener:Lcom/games37/riversdk/core/callback/OnBtnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
