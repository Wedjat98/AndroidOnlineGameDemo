.class public Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
.super Ljava/lang/Object;
.source "ShareMessengerGenericTemplateElement.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private imageUrl:Landroid/net/Uri;

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$2(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->imageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;
    .registers 3

    .prologue
    .line 172
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;-><init>(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->build()Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    move-result-object v0

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 190
    .line 192
    const-class v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    .line 190
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    .prologue
    .line 177
    if-nez p1, :cond_3

    .line 181
    .end local p0    # "this":Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    :goto_2
    return-object p0

    .line 182
    .restart local p0    # "this":Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    :cond_3
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->title:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->access$1(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->setTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object v0

    .line 183
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->subtitle:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->access$2(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->setSubtitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object v0

    .line 184
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->imageUrl:Landroid/net/Uri;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->access$3(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object v0

    .line 185
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->access$4(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->setDefaultAction(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object v0

    .line 186
    # getter for: Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->button:Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;->access$5(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->readFrom(Lcom/facebook/share/model/ShareMessengerGenericTemplateElement;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setButton(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 2
    .param p1, "button"    # Lcom/facebook/share/model/ShareMessengerActionButton;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 167
    return-object p0
.end method

.method public setDefaultAction(Lcom/facebook/share/model/ShareMessengerActionButton;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 2
    .param p1, "defaultAction"    # Lcom/facebook/share/model/ShareMessengerActionButton;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->defaultAction:Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 159
    return-object p0
.end method

.method public setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 2
    .param p1, "imageUrl"    # Landroid/net/Uri;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->imageUrl:Landroid/net/Uri;

    .line 151
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 2
    .param p1, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->subtitle:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;
    .registers 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/facebook/share/model/ShareMessengerGenericTemplateElement$Builder;->title:Ljava/lang/String;

    .line 134
    return-object p0
.end method
