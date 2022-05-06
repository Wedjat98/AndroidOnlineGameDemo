.class Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;
.super Landroid/os/AsyncTask;
.source "WebDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploadStagingResourcesTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private exceptions:[Ljava/lang/Exception;

.field private parameters:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/facebook/internal/WebDialog;


# direct methods
.method constructor <init>(Lcom/facebook/internal/WebDialog;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 799
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 800
    iput-object p2, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->action:Ljava/lang/String;

    .line 801
    iput-object p3, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    .line 802
    return-void
.end method

.method static synthetic access$2(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;)[Ljava/lang/Exception;
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .registers 15
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 807
    iget-object v11, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    const-string v12, "media"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 808
    .local v5, "params":[Ljava/lang/String;
    array-length v11, v5

    new-array v6, v11, [Ljava/lang/String;

    .line 809
    .local v6, "results":[Ljava/lang/String;
    array-length v11, v5

    new-array v11, v11, [Ljava/lang/Exception;

    iput-object v11, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    .line 811
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    array-length v11, v5

    invoke-direct {v4, v11}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 813
    .local v4, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v8, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 815
    .local v8, "tasks":Ljava/util/concurrent/ConcurrentLinkedQueue;, "Ljava/util/concurrent/ConcurrentLinkedQueue<Lcom/facebook/GraphRequestAsyncTask;>;"
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 817
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    :try_start_20
    array-length v11, v5

    if-lt v3, v11, :cond_27

    .line 866
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 874
    .end local v6    # "results":[Ljava/lang/String;
    :goto_26
    return-object v6

    .line 818
    .restart local v6    # "results":[Ljava/lang/String;
    :cond_27
    invoke-virtual {p0}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_51

    .line 819
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_31
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_39

    .line 822
    const/4 v6, 0x0

    goto :goto_26

    .line 819
    :cond_39
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/AsyncTask;

    .line 820
    .local v7, "task":Landroid/os/AsyncTask;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/os/AsyncTask;->cancel(Z)Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_43} :catch_44

    goto :goto_31

    .line 867
    .end local v7    # "task":Landroid/os/AsyncTask;
    :catch_44
    move-exception v2

    .line 868
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_49
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_7b

    .line 871
    const/4 v6, 0x0

    goto :goto_26

    .line 824
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_51
    :try_start_51
    aget-object v11, v5, v3

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 825
    .local v9, "uri":Landroid/net/Uri;
    move v10, v3

    .line 826
    .local v10, "writeIndex":I
    invoke-static {v9}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v11

    if-eqz v11, :cond_6a

    .line 827
    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    .line 828
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 817
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 831
    :cond_6a
    new-instance v1, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;

    invoke-direct {v1, p0, v6, v10, v4}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask$1;-><init>(Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;[Ljava/lang/String;ILjava/util/concurrent/CountDownLatch;)V

    .line 860
    .local v1, "callback":Lcom/facebook/GraphRequest$Callback;
    invoke-static {v0, v9, v1}, Lcom/facebook/share/internal/ShareInternalUtility;->newUploadStagingResourceWithImageRequest(Lcom/facebook/AccessToken;Landroid/net/Uri;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v11

    .line 863
    invoke-virtual {v11}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    move-result-object v7

    .line 864
    .local v7, "task":Lcom/facebook/GraphRequestAsyncTask;
    invoke-virtual {v8, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_7a} :catch_44

    goto :goto_67

    .line 868
    .end local v1    # "callback":Lcom/facebook/GraphRequest$Callback;
    .end local v7    # "task":Lcom/facebook/GraphRequestAsyncTask;
    .end local v9    # "uri":Landroid/net/Uri;
    .end local v10    # "writeIndex":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :cond_7b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/AsyncTask;

    .line 869
    .local v7, "task":Landroid/os/AsyncTask;
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_49
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .registers 9
    .param p1, "results"    # [Ljava/lang/String;

    .prologue
    .line 879
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->spinner:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/facebook/internal/WebDialog;->access$2(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 881
    iget-object v5, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->exceptions:[Ljava/lang/Exception;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_d
    if-lt v4, v6, :cond_1e

    .line 888
    if-nez p1, :cond_2b

    .line 889
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Failed to stage photos for web dialog"

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    .line 912
    :goto_1d
    return-void

    .line 881
    :cond_1e
    aget-object v1, v5, v4

    .line 882
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v1, :cond_28

    .line 883
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v4, v1}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 881
    :cond_28
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 893
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2b
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 894
    .local v2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 895
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Failed to stage photos for web dialog"

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/facebook/internal/WebDialog;->sendErrorToListener(Ljava/lang/Throwable;)V

    goto :goto_1d

    .line 900
    :cond_43
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    .line 901
    const-string v5, "media"

    .line 902
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 899
    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Utility;->putJSONValueInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 905
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getDialogAuthority()Ljava/lang/String;

    move-result-object v4

    .line 906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dialog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->action:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 907
    iget-object v6, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->parameters:Landroid/os/Bundle;

    .line 904
    invoke-static {v4, v5, v6}, Lcom/facebook/internal/Utility;->buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v3

    .line 909
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/facebook/internal/WebDialog;->access$7(Lcom/facebook/internal/WebDialog;Ljava/lang/String;)V

    .line 910
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    # getter for: Lcom/facebook/internal/WebDialog;->crossImageView:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/facebook/internal/WebDialog;->access$5(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 911
    .local v0, "crossWidth":I
    iget-object v4, p0, Lcom/facebook/internal/WebDialog$UploadStagingResourcesTask;->this$0:Lcom/facebook/internal/WebDialog;

    div-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    # invokes: Lcom/facebook/internal/WebDialog;->setUpWebView(I)V
    invoke-static {v4, v5}, Lcom/facebook/internal/WebDialog;->access$8(Lcom/facebook/internal/WebDialog;I)V

    goto :goto_1d
.end method
