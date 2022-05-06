.class Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;
.super Ljava/lang/Object;
.source "AccountListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CellHolder"
.end annotation


# instance fields
.field ivDelete:Landroid/widget/ImageView;

.field tvAccount:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$1;

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/games37/riversdk/gm99/login/adapter/AccountListAdapter$CellHolder;-><init>()V

    return-void
.end method
