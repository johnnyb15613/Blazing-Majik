.class public Lcom/google/android/finsky/fragments/DeepLinkShimFragment;
.super Lcom/google/android/finsky/fragments/UrlBasedPageFragment;
.source "DeepLinkShimFragment.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/finsky/fragments/UrlBasedPageFragment;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;-><init>()V

    return-void
.end method

.method public static getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2
    .parameter "uri"

    .prologue
    .line 195
    const-string v1, "url"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 182
    const-string v2, "referrer"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, referrer:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 185
    const-string v2, "gclid"

    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, gclid:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    const/4 v2, 0x0

    .line 191
    .end local v0           #gclid:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 189
    .restart local v0       #gclid:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gclid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .end local v0           #gclid:Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .line 191
    goto :goto_0
.end method

.method private isFirstPartyCaller()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 215
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, packageName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return v4

    .line 220
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 221
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 223
    .local v3, result:I
    if-nez v3, :cond_0

    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 2
    .parameter "url"

    .prologue
    .line 39
    new-instance v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;

    invoke-direct {v0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;-><init>()V

    .line 40
    .local v0, fragment:Lcom/google/android/finsky/fragments/DeepLinkShimFragment;
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->setDfeTocAndUrl(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;)V

    .line 41
    return-object v0
.end method

.method private shouldSkipDetailsPage()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 203
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 204
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "use_direct_purchase"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 207
    .local v1, skipRequested:Z
    invoke-direct {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->isFirstPartyCaller()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/google/android/finsky/config/G;->enableThirdPartyDirectPurchases:Lcom/google/android/finsky/config/GservicesValue;

    invoke-virtual {v3}, Lcom/google/android/finsky/config/GservicesValue;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v4

    .line 209
    .local v2, trusted:Z
    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    move v3, v4

    :goto_1
    return v3

    .end local v2           #trusted:Z
    :cond_1
    move v2, v5

    .line 207
    goto :goto_0

    .restart local v2       #trusted:Z
    :cond_2
    move v3, v5

    .line 209
    goto :goto_1
.end method


# virtual methods
.method protected getLayoutRes()I
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/google/android/finsky/fragments/UrlBasedPageFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    .line 48
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->requestData()V

    .line 49
    return-void
.end method

.method public onDataChanged()V
    .locals 19

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->canChangeFragmentManagerState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->popBackStack()V

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDetailsUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v6}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasBrowseUrl()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getBrowseUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goBrowse(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/android/finsky/api/model/DfeToc;)V

    goto :goto_0

    .line 116
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasSearchUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://market.android.com/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSearchUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 121
    .local v18, url:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 123
    .local v17, uri:Landroid/net/Uri;
    const-string v1, "q"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 124
    .local v16, query:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v3}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getSearchUrl()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0, v3, v4}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToSearch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 125
    .end local v16           #query:Ljava/lang/String;
    .end local v17           #uri:Landroid/net/Uri;
    .end local v18           #url:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasDirectPurchase()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getDirectPurchase()Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;

    move-result-object v15

    .line 129
    .local v15, directPurchase:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    invoke-direct/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->shouldSkipDetailsPage()Z

    move-result v7

    .line 130
    .local v7, skipDetailsPage:Z
    if-nez v7, :cond_5

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v15}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getDetailsUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v6}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToDocPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 145
    .end local v7           #skipDetailsPage:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "requested_doc_id"

    invoke-virtual {v15}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getPurchaseDocid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 136
    .restart local v7       #skipDetailsPage:Z
    :cond_5
    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 137
    .local v2, account:Landroid/accounts/Account;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {v15}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getDetailsUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getOfferType()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v8}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getExternalReferrer(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUri:Landroid/net/Uri;

    invoke-static {v9}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getContinueUrl(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15}, Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;->getPurchaseDocid()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual/range {v1 .. v11}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToPurchase(Landroid/accounts/Account;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 147
    .end local v2           #account:Landroid/accounts/Account;
    .end local v7           #skipDetailsPage:Z
    .end local v15           #directPurchase:Lcom/google/android/finsky/remoting/protos/ResolveLink$DirectPurchase;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasHomeUrl()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v4}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->getHomeUrl()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    invoke-virtual {v1}, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;->hasRedeemGiftCard()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/google/android/finsky/FinskyApp;->get()Lcom/google/android/finsky/FinskyApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/finsky/FinskyApp;->getCurrentAccountName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/google/android/finsky/activities/RedeemGiftCardActivity;->show(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto/16 :goto_0

    .line 157
    :cond_8
    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 158
    .local v14, browse:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    const/high16 v1, 0x1000

    invoke-virtual {v14, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    const-string v1, "dont_resolve_again"

    const/4 v3, 0x1

    invoke-virtual {v14, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 164
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v14, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 166
    .local v12, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_a

    .line 167
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 168
    .local v13, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v1, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 170
    const/4 v1, 0x1

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v13, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 173
    :cond_9
    iget-object v1, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    .end local v13           #activityInfo:Landroid/content/pm/ActivityInfo;
    :cond_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mNavigationManager:Lcom/google/android/finsky/navigationmanager/NavigationManager;

    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->getToc()Lcom/google/android/finsky/api/model/DfeToc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->goToAggregatedHome(Lcom/google/android/finsky/api/model/DfeToc;)V

    .line 85
    return-void
.end method

.method protected onInitViewBinders()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public onResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mResponse:Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .line 79
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->onDataChanged()V

    .line 80
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    check-cast p1, Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->onResponse(Lcom/google/android/finsky/remoting/protos/ResolveLink$ResolveLinkResponse;)V

    return-void
.end method

.method protected rebindViews()V
    .locals 0

    .prologue
    .line 68
    return-void
.end method

.method protected requestData()V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mDfeApi:Lcom/google/android/finsky/api/DfeApi;

    iget-object v1, p0, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1, p0, p0}, Lcom/google/android/finsky/api/DfeApi;->resolveLink(Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)Lcom/android/volley/Request;

    .line 73
    invoke-virtual {p0}, Lcom/google/android/finsky/fragments/DeepLinkShimFragment;->switchToLoading()V

    .line 74
    return-void
.end method
