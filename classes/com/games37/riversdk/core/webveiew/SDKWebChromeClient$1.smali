.class Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;
.super Ljava/lang/Object;
.source "SDKWebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->selectImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

.field final synthetic val$image:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;Ljava/io/File;)V
    .registers 3
    .param p1, "this$0"    # Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    iput-object p2, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->val$image:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 184
    if-nez p2, :cond_3f

    .line 186
    :try_start_2
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v2, v1, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mSourceIntent:Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    iget-object v1, v1, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    iget-object v2, v2, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mSourceIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 212
    :goto_1b
    return-void

    .line 189
    :catch_1c
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SDKWebChromeClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choose album error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->destroyUploadMsg()V

    goto :goto_1b

    .line 196
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3f
    :try_start_3f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_ba

    .line 197
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    iget-object v2, v2, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    iget-object v4, v4, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    .line 198
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".fileprovider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->val$image:Ljava/io/File;

    .line 197
    invoke-static {v2, v3, v4}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mPhotoUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->access$002(Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;Landroid/net/Uri;)Landroid/net/Uri;

    .line 203
    :goto_6f
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v2, v1, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mSourceIntent:Landroid/content/Intent;

    .line 204
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    iget-object v1, v1, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mSourceIntent:Landroid/content/Intent;

    const-string v2, "output"

    iget-object v3, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    # getter for: Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mPhotoUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->access$000(Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    iget-object v1, v1, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    iget-object v2, v2, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mSourceIntent:Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_95} :catch_96

    goto :goto_1b

    .line 206
    :catch_96
    move-exception v0

    .line 207
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "SDKWebChromeClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choose Camera error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/games37/riversdk/common/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    invoke-virtual {v1}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->destroyUploadMsg()V

    goto/16 :goto_1b

    .line 201
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_ba
    :try_start_ba
    iget-object v1, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->this$0:Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;

    iget-object v2, p0, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient$1;->val$image:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->mPhotoUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;->access$002(Lcom/games37/riversdk/core/webveiew/SDKWebChromeClient;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_c5} :catch_96

    goto :goto_6f
.end method
