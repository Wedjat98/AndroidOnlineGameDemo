.class public final Lcom/google/android/gms/internal/zzcvs;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/plus/model/people/Person;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public final synthetic freeze()Ljava/lang/Object;
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/zzcvh;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcvs;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcvs;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcvs;->getImage()Lcom/google/android/gms/plus/model/people/Person$Image;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzcvh$zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcvs;->getObjectType()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcvs;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzcvh;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzcvh$zzc;ILjava/lang/String;)V

    return-object v0
.end method

.method public final getAboutMe()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBirthday()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getBraggingRights()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCircledByCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCurrentLocation()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .registers 2

    const-string v0, "displayName"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getGender()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    const-string v0, "personId"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzcvh$zzc;

    const-string v1, "image"

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzcvh$zzc;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getName()Lcom/google/android/gms/plus/model/people/Person$Name;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getNickname()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getObjectType()I
    .registers 5

    const-string v0, "objectType"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "person"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    const-string v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    goto :goto_f

    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown objectType string: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2c
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_30
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2c
.end method

.method public final bridge synthetic getOrganizations()Ljava/util/List;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final bridge synthetic getPlacesLived()Ljava/util/List;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPlusOneCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getRelationshipStatus()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final getTagline()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/zzc;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getUrls()Ljava/util/List;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final hasAboutMe()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasAgeRange()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasBirthday()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasBraggingRights()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasCircledByCount()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasCover()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasCurrentLocation()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasDisplayName()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasGender()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasId()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasImage()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasIsPlusUser()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasLanguage()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasName()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasNickname()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasObjectType()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasOrganizations()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasPlacesLived()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasPlusOneCount()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasRelationshipStatus()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasTagline()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasUrl()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final hasUrls()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasVerified()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isPlusUser()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final isVerified()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
