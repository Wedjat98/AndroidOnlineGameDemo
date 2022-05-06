.class public Lcom/facebook/share/internal/LikeDialog;
.super Lcom/facebook/internal/FacebookDialogBase;
.source "LikeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeDialog$NativeHandler;,
        Lcom/facebook/share/internal/LikeDialog$Result;,
        Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/internal/FacebookDialogBase",
        "<",
        "Lcom/facebook/share/internal/LikeContent;",
        "Lcom/facebook/share/internal/LikeDialog$Result;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_REQUEST_CODE:I

.field private static final TAG:Ljava/lang/String; = "LikeDialog"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    .line 54
    sput v0, Lcom/facebook/share/internal/LikeDialog;->DEFAULT_REQUEST_CODE:I

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 108
    sget v0, Lcom/facebook/share/internal/LikeDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Landroid/app/Activity;I)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 3
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 117
    new-instance v0, Lcom/facebook/internal/FragmentWrapper;

    invoke-direct {v0, p1}, Lcom/facebook/internal/FragmentWrapper;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    .line 118
    return-void
.end method

.method public constructor <init>(Lcom/facebook/internal/FragmentWrapper;)V
    .registers 3
    .param p1, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 135
    sget v0, Lcom/facebook/share/internal/LikeDialog;->DEFAULT_REQUEST_CODE:I

    invoke-direct {p0, p1, v0}, Lcom/facebook/internal/FacebookDialogBase;-><init>(Lcom/facebook/internal/FragmentWrapper;I)V

    .line 136
    return-void
.end method

.method static synthetic access$1(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 247
    invoke-static {p0}, Lcom/facebook/share/internal/LikeDialog;->createParameters(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2()Lcom/facebook/internal/DialogFeature;
    .registers 1

    .prologue
    .line 243
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->getFeature()Lcom/facebook/internal/DialogFeature;

    move-result-object v0

    return-object v0
.end method

.method public static canShowNativeDialog()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public static canShowWebFallback()Z
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method private static createParameters(Lcom/facebook/share/internal/LikeContent;)Landroid/os/Bundle;
    .registers 4
    .param p0, "likeContent"    # Lcom/facebook/share/internal/LikeContent;

    .prologue
    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "object_id"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeContent;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v1, "object_type"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeContent;->getObjectType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-object v0
.end method

.method private static getFeature()Lcom/facebook/internal/DialogFeature;
    .registers 1

    .prologue
    .line 244
    sget-object v0, Lcom/facebook/share/internal/LikeDialogFeature;->LIKE_DIALOG:Lcom/facebook/share/internal/LikeDialogFeature;

    return-object v0
.end method


# virtual methods
.method protected createBaseAppCall()Lcom/facebook/internal/AppCall;
    .registers 3

    .prologue
    .line 151
    new-instance v0, Lcom/facebook/internal/AppCall;

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeDialog;->getRequestCode()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/AppCall;-><init>(I)V

    return-object v0
.end method

.method protected getOrderedModeHandlers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/FacebookDialogBase",
            "<",
            "Lcom/facebook/share/internal/LikeContent;",
            "Lcom/facebook/share/internal/LikeDialog$Result;",
            ">.ModeHandler;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v0, "handlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/FacebookDialogBase<Lcom/facebook/share/internal/LikeContent;Lcom/facebook/share/internal/LikeDialog$Result;>.ModeHandler;>;"
    new-instance v1, Lcom/facebook/share/internal/LikeDialog$NativeHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/LikeDialog$NativeHandler;-><init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/LikeDialog$NativeHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;-><init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/LikeDialog$WebFallbackHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    return-object v0
.end method

.method protected registerCallbackImpl(Lcom/facebook/internal/CallbackManagerImpl;Lcom/facebook/FacebookCallback;)V
    .registers 6
    .param p1, "callbackManager"    # Lcom/facebook/internal/CallbackManagerImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/CallbackManagerImpl;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/internal/LikeDialog$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/internal/LikeDialog$Result;>;"
    if-nez p2, :cond_10

    .line 168
    const/4 v1, 0x0

    .line 176
    .local v1, "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :goto_3
    new-instance v0, Lcom/facebook/share/internal/LikeDialog$2;

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/internal/LikeDialog$2;-><init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/share/internal/ResultProcessor;)V

    .line 188
    .local v0, "callbackManagerCallback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeDialog;->getRequestCode()I

    move-result v2

    .line 187
    invoke-virtual {p1, v2, v0}, Lcom/facebook/internal/CallbackManagerImpl;->registerCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 190
    return-void

    .line 169
    .end local v0    # "callbackManagerCallback":Lcom/facebook/internal/CallbackManagerImpl$Callback;
    .end local v1    # "resultProcessor":Lcom/facebook/share/internal/ResultProcessor;
    :cond_10
    new-instance v1, Lcom/facebook/share/internal/LikeDialog$1;

    invoke-direct {v1, p0, p2, p2}, Lcom/facebook/share/internal/LikeDialog$1;-><init>(Lcom/facebook/share/internal/LikeDialog;Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookCallback;)V

    goto :goto_3
.end method

.method public show(Lcom/facebook/share/internal/LikeContent;)V
    .registers 2
    .param p1, "content"    # Lcom/facebook/share/internal/LikeContent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 146
    return-void
.end method

.method public bridge synthetic show(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/share/internal/LikeContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/LikeDialog;->show(Lcom/facebook/share/internal/LikeContent;)V

    return-void
.end method
