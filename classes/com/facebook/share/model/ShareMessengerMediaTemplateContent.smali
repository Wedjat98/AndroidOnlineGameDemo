.class public final Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareMessengerMediaTemplateContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;,
        Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent",
        "<",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final attachmentId:Ljava/lang/String;

.field private final button:Lcom/facebook/share/model/ShareMessengerActionButton;

.field private final mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

.field private final mediaUrl:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    new-instance v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$1;-><init>()V

    .line 105
    sput-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 114
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->attachmentId:Ljava/lang/String;

    .line 59
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaUrl:Landroid/net/Uri;

    .line 60
    const-class v0, Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerActionButton;

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 61
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 49
    # getter for: Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->access$2(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    .line 50
    # getter for: Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->attachmentId:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->access$3(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->attachmentId:Ljava/lang/String;

    .line 51
    # getter for: Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->mediaUrl:Landroid/net/Uri;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->access$4(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaUrl:Landroid/net/Uri;

    .line 52
    # getter for: Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->button:Lcom/facebook/share/model/ShareMessengerActionButton;
    invoke-static {p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;->access$5(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)Lcom/facebook/share/model/ShareMessengerActionButton;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;)V
    .registers 3

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;-><init>(Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachmentId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->attachmentId:Ljava/lang/String;

    return-object v0
.end method

.method public getButton()Lcom/facebook/share/model/ShareMessengerActionButton;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    return-object v0
.end method

.method public getMediaType()Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    return-object v0
.end method

.method public getMediaUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaType:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$MediaType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 99
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->attachmentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->mediaUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object v0, p0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;->button:Lcom/facebook/share/model/ShareMessengerActionButton;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 102
    return-void
.end method
