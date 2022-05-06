.class public Lcom/ad/sdk/adwords/AdWordsManager;
.super Ljava/lang/Object;
.source "AdWordsManager.java"


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mFirstOpenLabel:Ljava/lang/String;

.field private mFirstOpenValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "firstOpenLabel"    # Ljava/lang/String;
    .param p3, "firstOpenValue"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ad/sdk/adwords/AdWordsManager;->mAppId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/ad/sdk/adwords/AdWordsManager;->mFirstOpenLabel:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/ad/sdk/adwords/AdWordsManager;->mFirstOpenValue:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Landroid/content/Intent;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    return-void
.end method
