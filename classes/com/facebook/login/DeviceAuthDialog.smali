.class public Lcom/facebook/login/DeviceAuthDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "DeviceAuthDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/DeviceAuthDialog$RequestState;
    }
.end annotation


# static fields
.field private static final DEVICE_LOGIN_ENDPOINT:Ljava/lang/String; = "device/login"

.field private static final DEVICE_LOGIN_STATUS_ENDPOINT:Ljava/lang/String; = "device/login_status"

.field private static final LOGIN_ERROR_SUBCODE_AUTHORIZATION_DECLINED:I = 0x149635

.field private static final LOGIN_ERROR_SUBCODE_AUTHORIZATION_PENDING:I = 0x149636

.field private static final LOGIN_ERROR_SUBCODE_CODE_EXPIRED:I = 0x149620

.field private static final LOGIN_ERROR_SUBCODE_EXCESSIVE_POLLING:I = 0x149634

.field private static final REQUEST_STATE_KEY:Ljava/lang/String; = "request_state"


# instance fields
.field private completed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private confirmationCode:Landroid/widget/TextView;

.field private volatile currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

.field private volatile currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

.field private deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

.field private dialog:Landroid/app/Dialog;

.field private instructions:Landroid/widget/TextView;

.field private isBeingDestroyed:Z

.field private isRetry:Z

.field private mRequest:Lcom/facebook/login/LoginClient$Request;

.field private progressBar:Landroid/widget/ProgressBar;

.field private volatile scheduledPoll:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 85
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    .line 94
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/facebook/login/DeviceAuthDialog;)Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    return v0
.end method

.method static synthetic access$1(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/FacebookException;)V
    .registers 2

    .prologue
    .line 432
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->onError(Lcom/facebook/FacebookException;)V

    return-void
.end method

.method static synthetic access$10(Lcom/facebook/login/DeviceAuthDialog;)Landroid/app/Dialog;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$11(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/LoginClient$Request;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;

    return-object v0
.end method

.method static synthetic access$12(Lcom/facebook/login/DeviceAuthDialog;)Lcom/facebook/login/DeviceAuthDialog$RequestState;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    return-object v0
.end method

.method static synthetic access$13(Lcom/facebook/login/DeviceAuthDialog;)Z
    .registers 2

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    return v0
.end method

.method static synthetic access$14(Lcom/facebook/login/DeviceAuthDialog;Z)V
    .registers 2

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    return-void
.end method

.method static synthetic access$15(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 328
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/login/DeviceAuthDialog;->presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/login/DeviceAuthDialog;Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .registers 2

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->setCurrentRequestState(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    return-void
.end method

.method static synthetic access$3(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 1

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->onCancel()V

    return-void
.end method

.method static synthetic access$4(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 1

    .prologue
    .line 263
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->poll()V

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/login/DeviceAuthDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/login/DeviceAuthDialog;)V
    .registers 1

    .prologue
    .line 268
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V

    return-void
.end method

.method static synthetic access$7(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 417
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/login/DeviceAuthDialog;->completeLogin(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9(Lcom/facebook/login/DeviceAuthDialog;Z)Landroid/view/View;
    .registers 3

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/facebook/login/DeviceAuthDialog;->initializeContentView(Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private completeLogin(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V
    .registers 13
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "permissions"    # Lcom/facebook/internal/Utility$PermissionsPair;
    .param p3, "accessToken"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 420
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 422
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 424
    invoke-virtual {p2}, Lcom/facebook/internal/Utility$PermissionsPair;->getGrantedPermissions()Ljava/util/List;

    move-result-object v4

    .line 425
    invoke-virtual {p2}, Lcom/facebook/internal/Utility$PermissionsPair;->getDeclinedPermissions()Ljava/util/List;

    move-result-object v5

    .line 426
    sget-object v6, Lcom/facebook/AccessTokenSource;->DEVICE_AUTH:Lcom/facebook/AccessTokenSource;

    move-object v1, p3

    move-object v3, p1

    move-object v8, v7

    .line 420
    invoke-virtual/range {v0 .. v8}, Lcom/facebook/login/DeviceAuthMethodHandler;->onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 429
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 430
    return-void
.end method

.method private getPollRequest()Lcom/facebook/GraphRequest;
    .registers 7

    .prologue
    .line 281
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 282
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "code"

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getRequestCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 284
    const/4 v1, 0x0

    .line 285
    const-string v2, "device/login_status"

    .line 287
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 288
    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$4;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$4;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 283
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method private initializeContentView(Z)Landroid/view/View;
    .registers 7
    .param p1, "isSmartLogin"    # Z

    .prologue
    const/4 v4, 0x0

    .line 239
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 240
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-eqz p1, :cond_4f

    .line 241
    sget v3, Lcom/facebook/R$layout;->com_facebook_smart_device_dialog_fragment:I

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 245
    .local v2, "view":Landroid/view/View;
    :goto_11
    sget v3, Lcom/facebook/R$id;->progress_bar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->progressBar:Landroid/widget/ProgressBar;

    .line 246
    sget v3, Lcom/facebook/R$id;->confirmation_code:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->confirmationCode:Landroid/widget/TextView;

    .line 248
    sget v3, Lcom/facebook/R$id;->cancel_button:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 249
    .local v0, "cancelButton":Landroid/widget/Button;
    new-instance v3, Lcom/facebook/login/DeviceAuthDialog$2;

    invoke-direct {v3, p0}, Lcom/facebook/login/DeviceAuthDialog$2;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    sget v3, Lcom/facebook/R$id;->com_facebook_device_auth_instructions:I

    .line 256
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->instructions:Landroid/widget/TextView;

    .line 258
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->instructions:Landroid/widget/TextView;

    .line 259
    sget v4, Lcom/facebook/R$string;->com_facebook_device_auth_instructions:I

    invoke-virtual {p0, v4}, Lcom/facebook/login/DeviceAuthDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    .line 258
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    return-object v2

    .line 243
    .end local v0    # "cancelButton":Landroid/widget/Button;
    .end local v2    # "view":Landroid/view/View;
    :cond_4f
    sget v3, Lcom/facebook/R$layout;->com_facebook_device_auth_dialog_fragment:I

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_11
.end method

.method private onCancel()V
    .registers 4

    .prologue
    .line 445
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 460
    :goto_a
    return-void

    .line 450
    :cond_b
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_18

    .line 451
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 454
    :cond_18
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    if-eqz v0, :cond_21

    .line 456
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthMethodHandler;->onCancel()V

    .line 459
    :cond_21
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_a
.end method

.method private onError(Lcom/facebook/FacebookException;)V
    .registers 5
    .param p1, "ex"    # Lcom/facebook/FacebookException;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 442
    :goto_a
    return-void

    .line 437
    :cond_b
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_18

    .line 438
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v0}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->cleanUpAdvertisementService(Ljava/lang/String;)V

    .line 440
    :cond_18
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/login/DeviceAuthMethodHandler;->onError(Ljava/lang/Exception;)V

    .line 441
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_a
.end method

.method private onSuccess(Ljava/lang/String;)V
    .registers 12
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 357
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 358
    .local v9, "parameters":Landroid/os/Bundle;
    const-string v2, "fields"

    const-string v3, "id,permissions,name"

    invoke-virtual {v9, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    new-instance v0, Lcom/facebook/AccessToken;

    .line 361
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 362
    const-string v3, "0"

    move-object v1, p1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    .line 359
    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V

    .line 369
    .local v0, "temporaryToken":Lcom/facebook/AccessToken;
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 371
    const-string v3, "me"

    .line 373
    sget-object v5, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    .line 374
    new-instance v6, Lcom/facebook/login/DeviceAuthDialog$7;

    invoke-direct {v6, p0, p1}, Lcom/facebook/login/DeviceAuthDialog$7;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;)V

    move-object v2, v0

    move-object v4, v9

    .line 369
    invoke-direct/range {v1 .. v6}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 414
    .local v1, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v1}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 415
    return-void
.end method

.method private poll()V
    .registers 5

    .prologue
    .line 264
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->setLastPoll(J)V

    .line 265
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->getPollRequest()Lcom/facebook/GraphRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

    .line 266
    return-void
.end method

.method private presentConfirmation(Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "permissions"    # Lcom/facebook/internal/Utility$PermissionsPair;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 332
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 333
    sget v6, Lcom/facebook/R$string;->com_facebook_smart_login_confirmation_title:I

    .line 332
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "message":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 335
    sget v6, Lcom/facebook/R$string;->com_facebook_smart_login_confirmation_continue_as:I

    .line 334
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "continueFormat":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 337
    sget v6, Lcom/facebook/R$string;->com_facebook_smart_login_confirmation_cancel:I

    .line 336
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 338
    .local v1, "cancel":Ljava/lang/String;
    new-array v5, v7, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p4, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, "continueText":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 340
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 341
    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 342
    new-instance v6, Lcom/facebook/login/DeviceAuthDialog$5;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/facebook/login/DeviceAuthDialog$5;-><init>(Lcom/facebook/login/DeviceAuthDialog;Ljava/lang/String;Lcom/facebook/internal/Utility$PermissionsPair;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 347
    new-instance v6, Lcom/facebook/login/DeviceAuthDialog$6;

    invoke-direct {v6, p0}, Lcom/facebook/login/DeviceAuthDialog$6;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    invoke-virtual {v5, v1, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 354
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 355
    return-void
.end method

.method private schedulePoll()V
    .registers 6

    .prologue
    .line 269
    invoke-static {}, Lcom/facebook/login/DeviceAuthMethodHandler;->getBackgroundExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    .line 270
    new-instance v1, Lcom/facebook/login/DeviceAuthDialog$3;

    invoke-direct {v1, p0}, Lcom/facebook/login/DeviceAuthDialog$3;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 276
    iget-object v2, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {v2}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getInterval()J

    move-result-wide v2

    .line 277
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 269
    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->scheduledPoll:Ljava/util/concurrent/ScheduledFuture;

    .line 278
    return-void
.end method

.method private setCurrentRequestState(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V
    .registers 8
    .param p1, "currentRequestState"    # Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .prologue
    const/4 v5, 0x0

    .line 213
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 214
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->confirmationCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getAuthorizationUri()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->generateQRCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 218
    .local v2, "qrCode":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->instructions:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v2, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->confirmationCode:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 220
    iget-object v3, p0, Lcom/facebook/login/DeviceAuthDialog;->progressBar:Landroid/widget/ProgressBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    iget-boolean v3, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    if-nez v3, :cond_4a

    .line 223
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->getUserCode()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->startAdvertisementService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 224
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    .line 225
    .local v1, "logger":Lcom/facebook/appevents/AppEventsLogger;
    const-string v3, "fb_smart_login_service"

    invoke-virtual {v1, v3, v5, v5}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 230
    .end local v1    # "logger":Lcom/facebook/appevents/AppEventsLogger;
    :cond_4a
    invoke-virtual {p1}, Lcom/facebook/login/DeviceAuthDialog$RequestState;->withinLastRefreshWindow()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 231
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->schedulePoll()V

    .line 235
    :goto_53
    return-void

    .line 233
    :cond_54
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->poll()V

    goto :goto_53
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 123
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/facebook/R$style;->com_facebook_auth_dialog:I

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    .line 125
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_24

    iget-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isRetry:Z

    if-nez v1, :cond_24

    const/4 v1, 0x1

    :goto_18
    invoke-direct {p0, v1}, Lcom/facebook/login/DeviceAuthDialog;->initializeContentView(Z)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 128
    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->dialog:Landroid/app/Dialog;

    return-object v1

    .line 125
    .end local v0    # "view":Landroid/view/View;
    :cond_24
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    .line 104
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/facebook/login/DeviceAuthDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/facebook/FacebookActivity;

    .line 105
    .local v0, "facebookActivity":Lcom/facebook/FacebookActivity;
    invoke-virtual {v0}, Lcom/facebook/FacebookActivity;->getCurrentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/facebook/login/LoginFragment;

    .line 107
    .local v1, "fragment":Lcom/facebook/login/LoginFragment;
    invoke-virtual {v1}, Lcom/facebook/login/LoginFragment;->getLoginClient()Lcom/facebook/login/LoginClient;

    move-result-object v4

    .line 108
    invoke-virtual {v4}, Lcom/facebook/login/LoginClient;->getCurrentHandler()Lcom/facebook/login/LoginMethodHandler;

    move-result-object v4

    check-cast v4, Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 106
    iput-object v4, p0, Lcom/facebook/login/DeviceAuthDialog;->deviceAuthMethodHandler:Lcom/facebook/login/DeviceAuthMethodHandler;

    .line 110
    if-eqz p3, :cond_2b

    .line 111
    const-string v4, "request_state"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/facebook/login/DeviceAuthDialog$RequestState;

    .line 112
    .local v2, "requestState":Lcom/facebook/login/DeviceAuthDialog$RequestState;
    if-eqz v2, :cond_2b

    .line 113
    invoke-direct {p0, v2}, Lcom/facebook/login/DeviceAuthDialog;->setCurrentRequestState(Lcom/facebook/login/DeviceAuthDialog$RequestState;)V

    .line 117
    .end local v2    # "requestState":Lcom/facebook/login/DeviceAuthDialog$RequestState;
    :cond_2b
    return-object v3
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 152
    iput-boolean v1, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    .line 153
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->completed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 154
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 155
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

    if-eqz v0, :cond_14

    .line 156
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentGraphRequestPoll:Lcom/facebook/GraphRequestAsyncTask;

    invoke-virtual {v0, v1}, Lcom/facebook/GraphRequestAsyncTask;->cancel(Z)Z

    .line 159
    :cond_14
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->scheduledPoll:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1d

    .line 160
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->scheduledPoll:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 162
    :cond_1d
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 134
    iget-boolean v0, p0, Lcom/facebook/login/DeviceAuthDialog;->isBeingDestroyed:Z

    if-nez v0, :cond_a

    .line 135
    invoke-direct {p0}, Lcom/facebook/login/DeviceAuthDialog;->onCancel()V

    .line 137
    :cond_a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    if-eqz v0, :cond_e

    .line 143
    const-string v0, "request_state"

    iget-object v1, p0, Lcom/facebook/login/DeviceAuthDialog;->currentRequestState:Lcom/facebook/login/DeviceAuthDialog$RequestState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 145
    :cond_e
    return-void
.end method

.method public startLogin(Lcom/facebook/login/LoginClient$Request;)V
    .registers 10
    .param p1, "request"    # Lcom/facebook/login/LoginClient$Request;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/login/DeviceAuthDialog;->mRequest:Lcom/facebook/login/LoginClient$Request;

    .line 166
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 167
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v1, "scope"

    const-string v2, ","

    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->getDeviceRedirectUriString()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "redirectUriString":Ljava/lang/String;
    if-eqz v7, :cond_21

    .line 171
    const-string v1, "redirect_uri"

    invoke-virtual {v3, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/internal/Validate;->hasAppID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/facebook/internal/Validate;->hasClientToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 175
    .local v6, "accessToken":Ljava/lang/String;
    const-string v1, "access_token"

    invoke-virtual {v3, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "device_info"

    .line 177
    invoke-static {}, Lcom/facebook/devicerequests/internal/DeviceRequestsHelper;->getDeviceInfo()Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 180
    const/4 v1, 0x0

    .line 181
    const-string v2, "device/login"

    .line 183
    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    .line 184
    new-instance v5, Lcom/facebook/login/DeviceAuthDialog$1;

    invoke-direct {v5, p0}, Lcom/facebook/login/DeviceAuthDialog$1;-><init>(Lcom/facebook/login/DeviceAuthDialog;)V

    .line 179
    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 209
    .local v0, "graphRequest":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 210
    return-void
.end method
