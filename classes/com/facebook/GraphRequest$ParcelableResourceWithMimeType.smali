.class public Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;
.super Ljava/lang/Object;
.source "GraphRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParcelableResourceWithMimeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RESOURCE::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mimeType:Ljava/lang/String;

.field private final resource:Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRESOURCE;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2325
    new-instance v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType$1;

    invoke-direct {v0}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType$1;-><init>()V

    .line 2324
    sput-object v0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2333
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 2348
    .local p0, "this":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<TRESOURCE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2349
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->mimeType:Ljava/lang/String;

    .line 2350
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->resource:Landroid/os/Parcelable;

    .line 2351
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;)V
    .registers 3

    .prologue
    .line 2348
    invoke-direct {p0, p1}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;Ljava/lang/String;)V
    .registers 3
    .param p2, "mimeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRESOURCE;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2340
    .local p0, "this":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<TRESOURCE;>;"
    .local p1, "resource":Landroid/os/Parcelable;, "TRESOURCE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2344
    iput-object p2, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->mimeType:Ljava/lang/String;

    .line 2345
    iput-object p1, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->resource:Landroid/os/Parcelable;

    .line 2346
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 2315
    .local p0, "this":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<TRESOURCE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2307
    .local p0, "this":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<TRESOURCE;>;"
    iget-object v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getResource()Landroid/os/Parcelable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRESOURCE;"
        }
    .end annotation

    .prologue
    .line 2311
    .local p0, "this":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<TRESOURCE;>;"
    iget-object v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->resource:Landroid/os/Parcelable;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2319
    .local p0, "this":Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;, "Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType<TRESOURCE;>;"
    iget-object v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->mimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->resource:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 2321
    return-void
.end method
