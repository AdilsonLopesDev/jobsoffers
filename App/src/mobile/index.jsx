import React, { useCallback, useState, useEffect } from 'react';
import { Container, Content, Footer, TabIcons, ScrollView } from './styles';
import MobileHomeScreen from './pages/home';
import MobileProfileScreen from './pages/profiles';
import MobileSettingsScreen from './pages/settings';
import MobileNotificationsScreen from './pages/notifications';
import { useMobileApp } from './contexts/app';
import iService from '../services/service';
import { toast } from 'react-toastify';

function MobileCore() {
  const [tabActive, setTabActive] = useState('');
  const { notificationTotal, setNotificationTotal } = useMobileApp();

  const getAndSetUserProperties = async () => {
    const user = localStorage.getItem('@jobs:user');
    if (user) {
      const { PessoaId } = JSON.parse(user);

      iService
        .fetch({
          getById: { field: 'Id', value: PessoaId, consts: 'PessoaId' },
          table: 'SolicitacaoDocumento',
          properties: `Id Status`,
        })
        .then((response) => {
          if (!response.ok) return toast.error(response?.errors[0]?.message);

          setNotificationTotal(
            response.data?.filter((item) => item?.Status === 1)?.length
          );
        });
    }
  };

  useEffect(() => {
    getAndSetUserProperties();
  }, []);

  const handleIconClick = (tabIconId) => {
    Array.from(document.querySelectorAll('.tab-icons')).forEach((tab) =>
      tab.querySelector('i').classList.remove('active')
    );
    setTabActive(tabIconId);

    document.querySelector(`#${tabIconId} i`).classList.add('active');
  };

  const mobileBodyRender = useCallback(() => {
    switch (tabActive) {
      case 'mobile-home':
        return <MobileHomeScreen />;
      case 'mobile-profile':
        return <MobileProfileScreen />;
      case 'mobile-alarm':
        return <MobileNotificationsScreen />;
      case 'mobile-settings':
        return <MobileSettingsScreen />;
      default:
        return <MobileHomeScreen />;
    }
  }, [tabActive]);

  return (
    <Container>
      <Content>
        <ScrollView>{mobileBodyRender()}</ScrollView>
      </Content>
      <Footer>
        <TabIcons
          onClick={() => handleIconClick('mobile-favorite')}
          className="tab-icons"
          id="mobile-favorite"
        >
          <i className="flaticon-like-1"></i>
        </TabIcons>
        <TabIcons
          onClick={() => handleIconClick('mobile-profile')}
          className="tab-icons"
          id="mobile-profile"
        >
          <i className="flaticon-profile"></i>
        </TabIcons>
        <TabIcons
          onClick={() => handleIconClick('mobile-home')}
          className="tab-icons"
          id="mobile-home"
        >
          <i className="flaticon-home active"></i>
        </TabIcons>
        <TabIcons
          onClick={() => handleIconClick('mobile-alarm')}
          className="tab-icons"
          id="mobile-alarm"
        >
          <i
            className={
              notificationTotal !== 0 ? 'flaticon-alarm-1' : 'flaticon-alarm'
            }
          ></i>
          {notificationTotal === 0 ? (
            ''
          ) : (
            <small className="text-danger" style={{ position: 'absolute' }}>
              {notificationTotal}
            </small>
          )}
        </TabIcons>
        <TabIcons
          onClick={() => handleIconClick('mobile-settings')}
          className="tab-icons"
          id="mobile-settings"
        >
          <i className="flaticon-settings"></i>
        </TabIcons>
      </Footer>
    </Container>
  );
}

export default MobileCore;
