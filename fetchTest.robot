*** Settings ***

Library    SeleniumLibrary
Library    String
Library    OperatingSystem

*** Variables ***

${url}      https://vnexpress.net/trong-tre-du-co-ve-lam-to-4545196.html
${browser}      chrome

*** Test Cases ***
This is a test case for navigation, authentication and check the article content
    [Documentation]  Automation testing
    [Tags]  Functional
    Set Selenium Implicit Wait    20s
    Set Selenium Timeout    20s
# Requirement 1 (Test navigation)
    Given I go to the given link https://vnexpress.net/trong-tre-du-co-ve-lam-to-4545196.html successfully
    When I try to go to a new page
    Then I shall be able to go to a new page successfully
    And I try to go back to the previous page
    Then I shall be able to go back the previous pages successfully
    And I try to go forward to the next page
    Then I shall be able to go to the next page successfully
    Close Browser
# Requirement 2 (Check the article content)
    Given I go to the given link https://vnexpress.net/trong-tre-du-co-ve-lam-to-4545196.html successfully to verify the article content
    When I verify the title details of the article
    Then I will make sure that the title details of the article is displayed correctly
    And I verify the description of the article
    Then I will make sure that the description of the article is displayed correctly
    And I verify the CSS of all content of the article
    Then I will make sure that all content of the article is displayed correctly
    And I verify the first paragraph
    Then I will make sure that the first paragraph is displayed correctly
    And I verify the second paragraph
    Then I will make sure that the second paragraph is displayed correctly
    And I verify the third paragraph
    Then I will make sure that the third paragraph is displayed correctly
    And I verify the first picture
    Then I will make sure that the first picture is displayed correctly
    Then I verify the fourth paragraph
    And I will make sure that the fourth paragraph is displayed correctly
    Then I verify the fifth paragraph
    And I will make sure that the fifth paragraph is displayed correctly
    And I verify the second picture
    Then I will make sure that the second picture is displayed correctly
    Then I verify the sixth paragraph
    And I will make sure that the sixth paragraph is displayed correctly
    Then I verify the seventh paragraph
    And I will make sure that the seventh paragraph is displayed correctly
    Then I verify the eighth paragraph
    And I will make sure that the eighth paragraph is displayed correctly
    Then I verify the video in the article
    And I will make sure that the video in the article is worked correctly
    Then I verify the nineth paragraph
    And I will make sure that the nineth paragraph is displayed correctly
    Then I verify the tenth paragraph
    And I will make sure that the tenth paragraph is displayed correctly
    Then I verify the eleventh paragraph
    And I will make sure that the eleventh paragraph is displayed correctly
    Then I verify the author name
    And I will make sure that the author name is displayed correctly
    Close Browser
*** Keywords ***
I go to the given link https://vnexpress.net/trong-tre-du-co-ve-lam-to-4545196.html successfully
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    ${titleOfCurrentPage}    Get Title
    Log To Console    \n"Title of current page is: ${titleOfCurrentPage} "
    Title Should Be    Tr???ng tre d??? c?? v??? l??m t??? - VnExpress
    Should Be Equal    Tr???ng tre d??? c?? v??? l??m t??? - VnExpress   ${titleOfCurrentPage}
    Wait Until Element Is Visible    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]
    Element Should Be Visible    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]
    Element Text Should Be    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]        Tr???ng tre d??? c?? v??? l??m t???
I try to go to a new page
    Wait Until Element Is Visible    xpath:(//a[contains(@title, 'Kinh doanh')])[2]
    Wait Until Element Is Enabled    xpath:(//a[contains(@title, 'Kinh doanh')])[2]
    Element Should Be Visible    xpath:(//a[contains(@title, 'Kinh doanh')])[2]
    Element Should Be Enabled    xpath:(//a[contains(@title, 'Kinh doanh')])[2]
    Element Text Should Be    xpath:(//a[contains(@title, 'Kinh doanh')])[2]    Kinh doanh
    Click Element    xpath:(//a[contains(@title, 'Kinh doanh')])[2]
I shall be able to go to a new page successfully
    ${titleOfNewPage}    Get Title
    Log To Console    \n"Title of a new page is: ${titleOfNewPage} "
    Title Should Be    Tin kinh doanh: Th??? tr?????ng, t??i ch??nh, kinh t???, doanh nghi???p - VnExpress Kinh Doanh
    Should Be Equal    Tin kinh doanh: Th??? tr?????ng, t??i ch??nh, kinh t???, doanh nghi???p - VnExpress Kinh Doanh   ${titleOfNewPage}
    Wait Until Element Is Not Visible    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]     # Confirm that user has been navigated to a new page successfully
    Element Should Not Be Visible    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]
    Wait Until Element Is Visible    xpath:(//a[contains(@title, 'Ebank')])[3]
    Element Should Be Visible    xpath:(//a[contains(@title, 'Ebank')])[3]
    Element Text Should Be    xpath:(//a[contains(@title, 'Ebank')])[3]     Ebank
I try to go back to the previous page
    Go Back
I shall be able to go back the previous pages successfully
    ${titleOfPreviousPage}    Get Title
    Log To Console    \n"Title of the previous page is: ${titleOfPreviousPage} "
    Title Should Be    Tr???ng tre d??? c?? v??? l??m t??? - VnExpress
    Should Be Equal    Tr???ng tre d??? c?? v??? l??m t??? - VnExpress   ${titleOfPreviousPage}
    Wait Until Element Is Not Visible    xpath:(//a[contains(@title, 'Ebank')])[3]      # Confirm that user has been navigated back to the previous page successfully
    Element Should Not Be Visible    xpath:(//a[contains(@title, 'Ebank')])[3]
    Wait Until Element Is Visible    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]
    Element Should Be Visible    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]
    Element Text Should Be    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]        Tr???ng tre d??? c?? v??? l??m t???
I try to go forward to the next page
    Execute Javascript    history.forward()
I shall be able to go to the next page successfully
    ${titleOfNextPage}    Get Title
    Log To Console    \n"Title of the next page is: ${titleOfNextPage} "
    Title Should Be    Tin kinh doanh: Th??? tr?????ng, t??i ch??nh, kinh t???, doanh nghi???p - VnExpress Kinh Doanh
    Should Be Equal    Tin kinh doanh: Th??? tr?????ng, t??i ch??nh, kinh t???, doanh nghi???p - VnExpress Kinh Doanh   ${titleOfNextPage}
    Wait Until Element Is Not Visible    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]     # Confirm that user has been navigated to the next page successfully
    Element Should Not Be Visible    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]
    Wait Until Element Is Visible    xpath:(//a[contains(@title, 'Ebank')])[3]
    Element Should Be Visible    xpath:(//a[contains(@title, 'Ebank')])[3]
    Element Text Should Be    xpath:(//a[contains(@title, 'Ebank')])[3]     Ebank
I go to the given link https://vnexpress.net/trong-tre-du-co-ve-lam-to-4545196.html successfully to verify the article content
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    ${titleOfCurrentPage}    Get Title
    Log To Console    \n"Title of current page is: ${titleOfCurrentPage} "
    Title Should Be    Tr???ng tre d??? c?? v??? l??m t??? - VnExpress
    Should Be Equal    Tr???ng tre d??? c?? v??? l??m t??? - VnExpress   ${titleOfCurrentPage}
I verify the title details of the article
    Wait Until Element Is Visible    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]
    Element Should Be Visible    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]
    Element Text Should Be    xpath://h1[contains(text(), 'Tr???ng tre d??? c?? v??? l??m t??? ')]        Tr???ng tre d??? c?? v??? l??m t???
I will make sure that the title details of the article is displayed correctly
    ${titleDetailsFontSize}=    Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .title-detail'))).getPropertyValue('font-size');
    Should Be Equal    32px     ${titleDetailsFontSize}
    ${titleDetailsFontFamily}=      Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .title-detail'))).getPropertyValue('font-family');
    Should Be Equal    Merriweather, serif     ${titleDetailsFontFamily}
    ${titleDetailsFontWeight}=      Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .title-detail'))).getPropertyValue('font-weight');
    Should Be Equal    700     ${titleDetailsFontWeight}
    ${titleDetailsLineHeight}=      Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .title-detail'))).getPropertyValue('line-height');
    Should Be Equal    48px     ${titleDetailsLineHeight}
    ${titleDetailsMarginBottom}=    Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .title-detail'))).getPropertyValue('margin-bottom');
    Should Be Equal    15px     ${titleDetailsMarginBottom}
I verify the description of the article
    Wait Until Element Is Visible    xpath://span[contains(text(), 'Thanh H??a')]
    Element Should Be Visible    xpath://span[contains(text(), 'Thanh H??a')]
    Element Text Should Be    xpath://span[contains(text(), 'Thanh H??a')]       THANH H??A
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'description')])[1]
    Element Should Be Visible    xpath:(//p[contains(@class, 'description')])[1]
    Element Should Contain    xpath:(//p[contains(@class, 'description')])[1]       Th????ng ????n chim tr???i b??? s??n b???t, ??ng Mai V??n Qu??n th???u khu ?????m hoang, thu?? ng?????i tr???ng r???ng l??m n??i tr?? ng??? cho ch??ng.
I will make sure that the description of the article is displayed correctly
    ${locationStampColor}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.location-stamp'))).getPropertyValue('color');
    Should Be Equal     rgb(117, 117, 117)     ${locationStampColor}
    ${locationStampTextTransform}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.location-stamp')),'::before').getPropertyValue('text-transform');
    Should Be Equal    uppercase     ${locationStampTextTransform}
    ${descriptionFontSize}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .description'))).getPropertyValue('font-size');
    Should Be Equal    18px     ${descriptionFontSize}
    ${descriptionFontWeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .description'))).getPropertyValue('font-weight');
    Should Be Equal    400     ${descriptionFontWeight}
    ${titleDetailsLineHeight}=      Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .description'))).getPropertyValue('line-height');
    Should Be Equal    28.8px     ${titleDetailsLineHeight}
I verify the CSS of all content of the article
    Wait Until Element Is Visible    xpath://article[contains(@class, 'fck_detail')]
    Element Should Be Visible    xpath://article[contains(@class, 'fck_detail')]
I will make sure that all content of the article is displayed correctly
    ${articleTextColor}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail'))).getPropertyValue('color');
    Should Be Equal     rgb(34, 34, 34)     ${articleTextColor}
    ${articleTextWidth}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail'))).getPropertyValue('width');
    Should Be Equal     670px     ${articleTextWidth}
    ${articleTextLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${articleTextLineHeight}
    ${articleTextFont}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail'))).getPropertyValue('font');
    Should Be Equal     18px / 28.8px arial     ${articleTextFont}
    ${articleTextPosition}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail'))).getPropertyValue('position');
    Should Be Equal     relative     ${articleTextPosition}
I verify the first paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[1]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[1]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[1]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[1]        Nh?? nhem t???i m???i ng??y, ??ng Qu??n, 60 tu???i, l???i d???o quanh khu v?????n c???a gia ????nh ??? x?? H?? Ng???c, huy???n H?? Trung, ????? th??m ????n c?? ??ang chao nghi??ng tr??n nh???ng b???i tre. Th??i quen n??y ???????c ??ng duy tr?? h??n 10 n??m qua. "T??i coi ????n chim tr???i nh?? b???n. Ng??y n??o kh??ng nh??n th???y ch??ng bay l?????n, kh??ng ???????c nghe ti???ng r??u r??t l?? th???y thi???u v???ng, ??n kh??ng ngon mi???ng...", ??ng Qu??n t??m s???.
I will make sure that the first paragraph is displayed correctly
    ${firstParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${firstParagraphLineHeight}
    ${firstParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${firstParagraphTextRendering}
I verify the second paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[2]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[2]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[2]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[2]    T??? nh???, ??ng Qu??n ???? r???t y??u th??ch c??c lo??i chim. Nhi???u l???n ch???ng ki???n ????n chim hoang d?? b??? th??? s??n gi??ng l?????i ho???c b???n h??? mang ??i b??n th???t, ??ng b???o "r???t x??t xa, c???n c?? h??nh ?????ng". Trong m???t l???n v??? H?? Ng???c, th???y gi???a c??nh ?????ng hoang vu c?? nhi???u lo??i c?? b??? th?????ng bay v??? tr?? ng???, ??ng n???y sinh ?? ?????nh bi???n n??i ????y th??nh ng??i nh?? cho l?? chim hoang ?????n ???.
I will make sure that the second paragraph is displayed correctly
    ${secondParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${secondParagraphLineHeight}
    ${secondParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${secondParagraphTextRendering}
I verify the first picture
    Scroll Element Into View    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]
    Wait Until Element Is Visible    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]
    Wait Until Element Is Enabled    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]
    Element Should Be Visible    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]
    Element Should Be Enabled    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]
    Click Element    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]
    Wait Until Element Is Visible    xpath://img[contains(@src, 'https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=0UzU_3uE2O2K6aFwSy_yAg')]
    Element Should Be Visible    xpath://img[contains(@src, 'https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=0UzU_3uE2O2K6aFwSy_yAg')]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Image')])[4]
    Element Should Contain    xpath:(//p[contains(@class, 'Image')])[4]     C?? ?????u tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh:${SPACE}
    Element Should Contain    xpath:(//p[contains(@class, 'Image')])[4]     L?? Ho??ng
    Wait Until Element Is Visible    xpath://span[contains(@class, 'close-zoom')]
    Wait Until Element Is Enabled    xpath://span[contains(@class, 'close-zoom')]
    Element Should Be Visible    xpath://span[contains(@class, 'close-zoom')]
    Element Should Be Enabled    xpath://span[contains(@class, 'close-zoom')]
    Click Element    xpath://span[contains(@class, 'close-zoom')]
I will make sure that the first picture is displayed correctly
    ${firstPictureAlt}=     Get Element Attribute    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]      alt
    Should Be Equal    C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng   ${firstPictureAlt}
    ${firstPictureSrc}=     Get Element Attribute    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]      src
    Should Be Equal    https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=JkSYsGzKWK1NvzgfSy5hXA   ${firstPictureSrc}
    ${firstPictureDataSrc}=     Get Element Attribute    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]      data-src
    Should Be Equal    https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=JkSYsGzKWK1NvzgfSy5hXA   ${firstPictureDataSrc}
I verify the third paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[3]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[3]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[3]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[3]        N??m 2004, gia ????nh ??ng Qu??n nh???n th???u khu ?????m l???y 8 ha t???i x?? H?? Ng???c. L??c ???? c??? v??ng nh?? b??i ?????t ch???t, ch??? c?? lau s???y m???c hoang, ??t d???u ch??n ng?????i qua l???i. ??ng thu?? ng?????i tr???ng 50 b???i tre, ????o ?????t ?????p ???????ng, x??y t?????ng r??o bao quanh nh???m b???o v??? ????n c?? tho??t n???n s??n b???n.
I will make sure that the third paragraph is displayed correctly
    ${thirdParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${thirdParagraphLineHeight}
    ${thirdParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${thirdParagraphTextRendering}
I verify the fourth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[4]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[4]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[4]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[4]    Tre m???c ?????n ????u, c?? v??? tr?? ???n ?????n ????. ?????n n??m 2014, ???????c ch??nh quy???n giao th??m h??n 10 ha ?????t ??? khu l??n c???n, ??ng Qu??n quy ho???ch th??nh v??ng ch??n nu??i v?? tr???ng c??y ??n qu???, ph???n c??n l???i tr???ng tre, lu???ng cho c?? tr?? ng???.
I will make sure that the fourth paragraph is displayed correctly
    ${fourthParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${fourthParagraphLineHeight}
    ${fourthParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${fourthParagraphTextRendering}
I verify the fifth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[5]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[5]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[5]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[5]        "Nhi???u ng?????i b???o t??i kh??ng, nh??ng t??i c??? l??m v???i t???t c??? ??am m??...", ??ng ch??? v?????n c?? chia s???. Hi???n s??? l?????ng c?? l??m t???, sinh n??? trong khu v?????n c???a gia ????nh ??ng Qu??n l??n t???i h??ng ch???c ngh??n con. Ngo??i c??c lo??i c?? l???a, c?? nh???n c??n c?? b??? n??ng, s??o s???u, b??m b???p...
I will make sure that the fifth paragraph is displayed correctly
    ${fifthParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${fifthParagraphLineHeight}
    ${fifthParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${fifthParagraphTextRendering}
I verify the second picture
    Scroll Element Into View    xpath://img[contains(@alt, '??ng Mai V??n Qu??n. ???nh: L?? Ho??ng')]
    Wait Until Element Is Visible    xpath://img[contains(@alt, '??ng Mai V??n Qu??n. ???nh: L?? Ho??ng')]
    Wait Until Element Is Enabled    xpath://img[contains(@alt, '??ng Mai V??n Qu??n. ???nh: L?? Ho??ng')]
    Element Should Be Visible    xpath://img[contains(@alt, '??ng Mai V??n Qu??n. ???nh: L?? Ho??ng')]
    Element Should Be Enabled    xpath://img[contains(@alt, '??ng Mai V??n Qu??n. ???nh: L?? Ho??ng')]
    Click Element    xpath://img[contains(@alt, '??ng Mai V??n Qu??n. ???nh: L?? Ho??ng')]
    Wait Until Element Is Visible    xpath://img[contains(@src, 'https://i1-vnexpress.vnecdn.net/2022/12/07/5-2599-1670385184.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=uZG2aRLpGD1I2HVGv61XwQ')]
    Element Should Be Visible    xpath://img[contains(@src, 'https://i1-vnexpress.vnecdn.net/2022/12/07/5-2599-1670385184.jpg?w=0&h=0&q=100&dpr=2&fit=crop&s=uZG2aRLpGD1I2HVGv61XwQ')]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Image')])[4]
    Element Should Contain    xpath:(//p[contains(@class, 'Image')])[4]     ??ng Mai V??n Qu??n. ???nh:
    Element Should Contain    xpath:(//p[contains(@class, 'Image')])[4]     ${SPACE}L?? Ho??ng
    Wait Until Element Is Visible    xpath://span[contains(@class, 'close-zoom')]
    Wait Until Element Is Enabled    xpath://span[contains(@class, 'close-zoom')]
    Element Should Be Visible    xpath://span[contains(@class, 'close-zoom')]
    Element Should Be Enabled    xpath://span[contains(@class, 'close-zoom')]
    Click Element    xpath://span[contains(@class, 'close-zoom')]
I will make sure that the second picture is displayed correctly
    ${secondPictureAlt}=     Get Element Attribute    xpath://img[contains(@alt, '??ng Mai V??n Qu??n. ???nh: L?? Ho??ng')]      alt
    Should Be Equal    ??ng Mai V??n Qu??n. ???nh: L?? Ho??ng   ${secondPictureAlt}
    ${secondPictureSrc}=     Get Element Attribute    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]      src
    Should Be Equal     https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=JkSYsGzKWK1NvzgfSy5hXA   ${secondPictureSrc}
    ${secondPictureDataSrc}=     Get Element Attribute    xpath://img[contains(@alt, 'C?? ?????u chi ch??t tr??n r???ng tre m???i bu???i t???i m??a ????ng. ???nh: L?? Ho??ng')]      data-src
    Should Be Equal    https://i1-vnexpress.vnecdn.net/2022/12/07/4-5848-1670385184.jpg?w=680&h=0&q=100&dpr=1&fit=crop&s=JkSYsGzKWK1NvzgfSy5hXA   ${secondPictureDataSrc}
I verify the sixth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[6]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[6]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[6]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[6]    "M???ng l?? m???i n??m c?? v??? c??ng nhi???u, ch???ng t??? ?????t l??nh chim ?????u. M???i l???n v??o ng???m ?????i c??, t??i c???m th???y s???c kh???e t???t h??n l??n v?? c???m nh???n r?? h??n s??? nh??? b?? c???a m??nh tr?????c thi??n nhi??n...", ??ng Qu??n chia s???.
I will make sure that the sixth paragraph is displayed correctly
    ${sixthParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${sixthParagraphLineHeight}
    ${sixthParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${sixthParagraphTextRendering}
I verify the seventh paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[7]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[7]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[7]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[7]    T??? khi g???n g??i v???i v?????n c??, ??ng Qu??n y??u c???u gia ????nh kh??ng mua hay s??? d???ng th???t chim tr???i. C?? l???n v??i ng?????i b???n m???i ??n th???t chim ?????c s???n, ??ng kh?????c t??? gi???n d??? v?? "t?????ng t?????ng nh?? l?? chim ??? nh?? b??? b???n ch???t khi bay xa ki???m ??n...".
I will make sure that the seventh paragraph is displayed correctly
    ${seventhParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${seventhParagraphLineHeight}
    ${seventhParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${seventhParagraphTextRendering}
I verify the eighth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[8]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[8]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[8]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[8]    ????? b???o v??? ????n chim, ??ng Qu??n c??n thu?? nhi???u nh??n c??ng v???a ch??m s??c c??y tr???ng v???a canh ch???ng kh??ng cho ng?????i l??? s??n b???n. B?? B??i Th??? Th???m, c??ng nh??n trong trang tr???i, cho hay h??ng ng??y ??i ki???m tra xem chim c?? b??? th????ng hay kh??ng. Con n??o b??? d??nh b???y l?????i th?? g???, nh???ng con b??? b???nh ch???t th?? ??em ch??n, r???nh th?? b?? d??ng dao ph??t quang c??y b???i cho chim l???y ch??? l??m t???, sinh n???.
I will make sure that the eighth paragraph is displayed correctly
    ${eighthParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${eighthParagraphLineHeight}
    ${eighthParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${eighthParagraphTextRendering}
I verify the video in the article
    Scroll Element Into View    xpath:(//p[contains(@class, 'Image')])[3]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Image')])[3]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Image')])[3]
    Element Should Contain    xpath:(//p[contains(@class, 'Image')])[3]     ????n c?? bay l?????n tr??n khu r???ng c???a ??ng Qu??n. Video: L?? Ho??ng
    Wait Until Element Is Visible    xpath://button[contains(@class, 'vjs-big-play-button')]
    Wait Until Element Is Enabled    xpath://button[contains(@class, 'vjs-big-play-button')]
    Element Should Be Visible    xpath://button[contains(@class, 'vjs-big-play-button')]
    Element Should Be Enabled    xpath://button[contains(@class, 'vjs-big-play-button')]
I will make sure that the video in the article is worked correctly
    Click Element    xpath://button[contains(@class, 'vjs-big-play-button')]
    Wait Until Element Is Visible    xpath://span[contains(text(), '0:50')]
    Element Should Be Visible    xpath://span[contains(text(), '0:50')]
    Element Text Should Be    xpath://span[contains(text(), '0:50')]    0:50
    Sleep    5s
    Click Element    xpath://button[contains(@class, 'vjs-big-play-button')]
#    Wait Until Element Is Visible    xpath://button[contains(@title, 'B??? t???t ti???ng')]
#    Wait Until Element Is Enabled    xpath://button[contains(@title, 'B??? t???t ti???ng')]
#    Element Should Be Visible    xpath://button[contains(@title, 'B??? t???t ti???ng')]
#    Element Should Be Enabled    xpath://button[contains(@title, 'B??? t???t ti???ng')]
#    Click Element    xpath://button[contains(@title, 'B??? t???t ti???ng')]
#    Wait Until Element Is Visible    xpath://button[contains(@title, 'T???t ti???ng')]
#    Wait Until Element Is Enabled    xpath://button[contains(@title, 'T???t ti???ng')]
#    Element Should Be Visible    xpath://button[contains(@title, 'T???t ti???ng')]
#    Element Should Be Enabled    xpath://button[contains(@title, 'T???t ti???ng')]
#    Click Element    xpath://button[contains(@title, 'T???t ti???ng')]
I verify the nineth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[9]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[9]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[9]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[9]    V??? ??ng Qu??n, b?? Vi Th??? Mai Lam, cho bi???t gia ????nh ???ng h??? vi???c ch???ng d??nh ?????t tr???ng c??y, ?????p b??? cho chim tr???i v??? tr?? ng???. "??ng ???y d??nh c??? t??m huy???t cho ?????o c??, c?? khi b???n r???n ch??m c?? c??n h??n vi???c nh??...", b?? Lam n??i.
I will make sure that the nineth paragraph is displayed correctly
    ${ninethParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${ninethParagraphLineHeight}
    ${ninethParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${ninethParagraphTextRendering}
I verify the tenth paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[10]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[10]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[10]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[10]       N??i v??? d??? ?????nh t????ng lai, ??ng Qu??n cho hay s??? ti???p t???c b???o v??? ????n c?? v?? ?????nh h?????ng ph??t tri???n n??i ????y th??nh khu du l???ch sinh th??i g???n g??i v???i thi??n nhi??n, gi??p n??ng cao ?? th???c b???o v??? m??i tr?????ng trong c???ng ?????ng.
I will make sure that the tenth paragraph is displayed correctly
    ${tenthParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${tenthParagraphLineHeight}
    ${tenthParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${tenthParagraphTextRendering}
I verify the eleventh paragraph
    Scroll Element Into View    xpath:(//p[contains(@class, 'Normal')])[11]
    Wait Until Element Is Visible    xpath:(//p[contains(@class, 'Normal')])[11]
    Element Should Be Visible    xpath:(//p[contains(@class, 'Normal')])[11]
    Element Text Should Be    xpath:(//p[contains(@class, 'Normal')])[11]       ????nh gi?? cao m?? h??nh trang tr???i v?? h??nh ?????ng b???o v??? c??c lo??i chim hoang d?? c???a ??ng Qu??n, ??ng Nguy???n Minh T???n, Ch??? t???ch x?? H?? Ng???c, cho bi???t ????y l?? v?????n c?? duy nh???t ??? huy???n H?? Trung n??n r???t c???n ???????c b???o t???n v?? nh??n r???ng. Ch??nh quy???n ??ang xem x??t, t???o ??i???u ki???n ????? th??nh l???p khu du l???ch sinh th??i ??? n??i n??y nh???m ph??t huy h??n n???a gi?? tr??? c???a v??ng ?????t.
I will make sure that the eleventh paragraph is displayed correctly
    ${eleventhParagraphLineHeight}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('line-height');
    Should Be Equal     28.8px     ${eleventhParagraphLineHeight}
    ${eleventhParagraphTextRendering}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.fck_detail .Normal, .fck_detail p'))).getPropertyValue('text-rendering');
    Should Be Equal     optimizespeed     ${eleventhParagraphTextRendering}
I verify the author name
    Scroll Element Into View    xpath://p[contains(@class, 'author_mail')]
    Wait Until Element Is Visible    xpath://p[contains(@class, 'author_mail')]
    Element Should Be Visible    xpath://p[contains(@class, 'author_mail')]
    Element Text Should Be    xpath://p[contains(@class, 'author_mail')]    L?? Ho??ng
I will make sure that the author name is displayed correctly
    ${authorNameFontSize}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .author, .page-detail .author_mail'))).getPropertyValue('font-size');
    Should Be Equal     18px     ${authorNameFontSize}
    ${authorNameTextAlign}=     Execute Javascript      return window.getComputedStyle(document.querySelector(('.page-detail .author, .page-detail .author_mail'))).getPropertyValue('text-align');
    Should Be Equal     right     ${authorNameTextAlign}

# Notes: Because I do not have enough time to organzie the best test case structure so that in this code demo I just show the whole code in only one file.
# The best solution is split the Variables in another folder and import to this file.
# On the other hand, all xpaths should be stored as variables and store it into another folder then import to this file.
# I am on a holiday so that I can not spend more time for this code demo. I have to coincide with the tour guide management. Sorry for this inconvenience.
# I think I can show more in details if I have a chance to present my knowledge to interviewer.

