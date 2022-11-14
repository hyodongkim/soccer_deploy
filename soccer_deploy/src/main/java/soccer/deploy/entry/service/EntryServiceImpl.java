package soccer.deploy.entry.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import soccer.deploy.entry.entity.Entry;
import soccer.deploy.entry.repository.JpaEntryRepository;

@Service
@Transactional
public class EntryServiceImpl implements EntryService {
	@Autowired
	private JpaEntryRepository jpaentryRepository;

	@Override //�ֽ� ��������� �ش��ϴ� ������ ��������
	public List<Entry> findEntryRecentMatch(Long id) {
		return jpaentryRepository.findAllByMatchId(id);
	}

	@Override
	public List<Entry> SearchRecentEntry(Long id, String name) {
		// TODO Auto-generated method stub
		return jpaentryRepository.findSearchEntry(id, name);
	}
	
}